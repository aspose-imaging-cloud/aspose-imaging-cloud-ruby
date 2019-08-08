# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_compare_images.rb">
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
  class TestCompareImages < AiApiTester
    @comparable_image = 'ComparableImage.jpg'
    @comparing_image_similar_less_15 = 'ComparingImageSimilar15.jpg'
    @comparing_image_similar_more_75 = 'ComparingImageSimilar75.jpg'

    def test_compare_two_images_in_search_context
      test = lambda do
        image1 = get_storage_path(@comparable_image)
        add_image_features_to_search_context(image1)
        image2 = get_storage_path(@comparing_image_similar_more_75)
        add_image_features_to_search_context(image2)
        response = imaging_api.compare_images(AsposeImagingCloud::CompareImagesRequest(search_context_id, image_id1: image1, image_id2: image2, storage: test_storage))
        assert_equal(1, response.results.size)
        assert(response.results[0].similarity >= 70)
      end

      AiApiTester.run_test_with_logging('CompareTwoImagesInSearchContextTest', test)
    end

    def test_compare_loaded_image_to_image_in_search_context
      test = lambda do
        image = get_storage_path(@comparable_image)
        add_image_features_to_search_context(image)
        storage_path = (@original_data_folder + '/') + @comparing_image_similar_less_15
        image_stream = imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest(storage_path, test_storage))
        assert_not_nil(image_stream)
        response = imaging_api.compare_images(AsposeImagingCloud::CompareImagesRequest(search_context_id, image_id1: image, image_data: image_stream, storage: test_storage))
        assert_equal(1, response.results.size)
        assert(response.results[0].similarity <= 15)
      end

      AiApiTester.run_test_with_logging('CompareLoadedImageToImageInSearchContextTest', test)
    end
  end
end