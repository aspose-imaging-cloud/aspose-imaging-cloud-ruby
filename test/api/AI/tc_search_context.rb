# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_find_duplicates.rb">
#    Copyright (c) 2018-2019 Aspose Pty Ltd. All rights reserved.
#  </copyright>
#  <summary>
#    Permission is hereby granted, free of charge, to any person obtaining a
#   copy  of this software and associated documentation files (the "Software"),
#   to deal  in the Software without restriction, including without limitation
#   the rights  to use, copy, modify, merge, publish, distribute, sublicense,
#   and/or sell  copies of the Software, and to permit persons to whom the
#   Software is  furnished to do so, subject to the following conditions:
#
#   The above copyright notice and this permission notice shall be included in
#   all  copies or substantial portions of the Software.
#
#   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#   FROM,  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#   DEALINGS IN THE SOFTWARE.
#  </summary>
#  ----------------------------------------------------------------------------

require_relative './ai_api_tester'

module AsposeImagingCloudTests
  class TestSearchContext < AiApiTester
    def setup
      super
      @small_test_image = 'ComparableImage.jpg'
      @test_image = 'ComparingImageSimilar15.jpg'
    end

    def test_create_search_context
      AiApiTester.run_test_with_logging('CreateSearchContextTest', lambda do
        assert_not_nil(search_context_id)
      end)
    end

    def test_delete_image_search
      test = lambda do
        delete_image_search(search_context_id)
        assert_raise AsposeImagingCloud::ApiError do
          imaging_api.get_image_search_status(AsposeImagingCloud::GetImageSearchStatusRequest.new(search_context_id, nil, test_storage))
        end
      end

      AiApiTester.run_test_with_logging('DeleteImageSearchTest', test)
    end

    def test_add_image
      AiApiTester.run_test_with_logging('AddImageTest', -> { add_image(@test_image) })
    end

    def test_delete_image
      test = lambda do
        image = @test_image
        add_image(image)
        dest_server_path = (temp_folder + '/') + image
        imaging_api.delete_image_search(AsposeImagingCloud::DeleteSearchImageRequest.new(search_context_id, dest_server_path, nil, test_storage))
        assert_raise AsposeImagingCloud::ApiError do
          imaging_api.get_search_image(AsposeImagingCloud::GetSearchImageRequest.new(search_context_id, dest_server_path, nil, test_storage))
        end
      end

      AiApiTester.run_test_with_logging('DeleteImageTest', test)
    end

    def test_get_image
      test = lambda do
        image = @test_image
        add_image(image)
        response_file = get_image(image)
        assert_operator response_file.size, :>, 50_000
      end
      AiApiTester.run_test_with_logging('GetImageTest', test)
    end

    def test_update_image
      test = lambda do
        image = @test_image
        add_image(image)
        response_file = get_image(image)
        assert_operator response_file.size, :>, 50_000
        image = @small_test_image
        dest_server_path = (temp_folder + '/') + image
        storage_path = (original_data_folder + '/') + image
        image_stream = File.open(imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new(storage_path, test_storage)), 'rb')
        assert_not_nil(image_stream)
        imaging_api.update_search_image(AsposeImagingCloud::UpdateSearchImageRequest.new(search_context_id, dest_server_path, image_stream, nil, test_storage))
        response_file = get_image(image)
        assert_operator response_file.size, :<, 40_000
      end

      AiApiTester.run_test_with_logging('UpdateImageTest', test)
    end

    def test_extract_image_features
      test = lambda do
        image = @test_image
        add_image(image)
        dest_server_path = (temp_folder + '/') + image
        response = imaging_api.extract_image_features(AsposeImagingCloud::ExtractImageFeaturesRequest.new(search_context_id, dest_server_path, nil, nil, test_storage))
        assert(response.image_id.include?(image))
        assert_operator response.features.size, :>, 0
      end

      AiApiTester.run_test_with_logging('ExtractImageFeaturesTest', test)
    end

    def test_extract_and_add_image_features
      AiApiTester.run_test_with_logging('ExtractAndAddImageFeaturesTest', -> { add_image_features(@test_image) })
    end

    def test_extract_and_add_image_features_from_folder_test
      omit('IMAGINGNET-107')
      test = lambda do
        imaging_api.create_image_features(AsposeImagingCloud::CreateImageFeaturesRequest.new(search_context_id, nil, nil, original_data_folder + '/FindSimilar', nil, test_storage))
        sleep(wait_timeout)
        response = imaging_api.get_image_features(AsposeImagingCloud::GetImageFeaturesRequest.new(search_context_id, original_data_folder + '/FindSimilar/3.jpg', nil, test_storage))
        assert(response.image_id.include?('3.jpg'))
        assert_operator response.features.size, :>, 0
      end

      AiApiTester.run_test_with_logging('ExtractAndAddImageFeaturesFromFolderTest', test)
    end

    def test_get_image_feature
      test = lambda do
        add_image_features(@test_image)
        response = get_image_features(@test_image)
        assert(response.image_id.include?(@test_image))
        assert_operator response.features.size, :>, 0
      end

      AiApiTester.run_test_with_logging('GetImageFeaturesTest', test)
    end

    def test_delete_image_features
      test = lambda do
        image = @test_image
        add_image_features(image)
        dest_server_path = (temp_folder + '/') + image
        imaging_api.delete_image_search(AsposeImagingCloud::DeleteSearchImageRequest.new(search_context_id, dest_server_path, nil, test_storage))
        assert_raise AsposeImagingCloud::ApiError do
          imaging_api.get_search_image(AsposeImagingCloud::GetSearchImageRequest.new(search_context_id, dest_server_path, nil, test_storage))
        end
      end

      AiApiTester.run_test_with_logging('DeleteImageFeaturesTest', test)
    end

    def test_update_image_features
      test = lambda do
        image = @test_image
        add_image_features(image)
        response = get_image_features(image)
        assert(response.image_id.include?(@test_image))
        features_length = response.features.size
        dest_server_path = (original_data_folder + '/') + image
        storage_path = (original_data_folder + '/') + @small_test_image
        image_stream = File.open(imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new(storage_path, test_storage)), 'rb')
        assert_not_nil(image_stream)
        imaging_api.update_image_features(AsposeImagingCloud::UpdateImageFeaturesRequest.new(search_context_id, dest_server_path, image_stream, nil, test_storage))
        response = get_image_features(image)
        assert(response.image_id.include?(@test_image))
        assert_not_equal(features_length, response.features.size)
      end

      AiApiTester.run_test_with_logging('ExtractImageFeaturesTest', test)
    end

    private

    def add_image(image)
      dest_server_path = (temp_folder + '/') + image
      storage_path = (original_data_folder + '/') + image
      image_stream = File.open(imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new(storage_path, test_storage)), 'rb')
      assert_not_nil(image_stream)
      imaging_api.add_search_image(AsposeImagingCloud::AddSearchImageRequest.new(search_context_id, dest_server_path, image_stream, nil, test_storage))
      exist_response = imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(dest_server_path, test_storage))
      assert_not_nil(exist_response)
      assert(exist_response.exists)
    end

    def get_image(image)
      dest_server_path = (temp_folder + '/') + image
      File.open(imaging_api.get_search_image(AsposeImagingCloud::GetSearchImageRequest.new(search_context_id, dest_server_path, nil, test_storage)), 'rb')
    end

    def add_image_features(image)
      dest_server_path = (original_data_folder + '/') + image
      imaging_api.create_image_features(AsposeImagingCloud::CreateImageFeaturesRequest.new(search_context_id, nil, dest_server_path, nil, nil, test_storage))
    end

    def get_image_features(image)
      dest_server_path = (original_data_folder + '/') + image
      imaging_api.get_image_features(AsposeImagingCloud::GetImageFeaturesRequest.new(search_context_id, dest_server_path, nil, test_storage))
    end
  end
end
