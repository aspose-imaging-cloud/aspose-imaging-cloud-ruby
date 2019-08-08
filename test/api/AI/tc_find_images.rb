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

require_relative '../../api_tester'

module AsposeImagingCloudTests
  class TestFindImages < AiApiTester
    @image_to_find = '4.jpg'
    @image_to_find_by_tag = 'ComparingImageSimilar75.jpg'

    def test_find_similar
      test = lambda do
        add_image_features_to_search_context(original_data_folder + '/FindSimilar', is_folder: true)
        find_image_id = (original_data_folder + '/FindSimilar/') + @image_to_find
        response = imaging_api.find_similar_images(AsposeImagingCloud::FindSimilarImagesRequest(search_context_id, similarity_threshold: 3, max_count: 3, image_id: find_image_id, storage: test_storage))
        assert(response.results.size >= 1)
      end

      AiApiTester.run_test_with_logging('FindSimilarImagesTest', test)
    end

    def test_find_similar_images_by_tag
      test = lambda do
        add_image_features_to_search_context(original_data_folder + '/FindSimilar', is_folder: true)
        tag = 'TestTag'
        storage_path = (original_data_folder + '/') + @image_to_find_by_tag
        tag_image_stream = imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest(storage_path, test_storage))
        assert_not_nil(tag_image_stream)
        imaging_api.create_image_tag(AsposeImagingCloud::CreateImageTagRequest(tag_image_stream, search_context_id, tag, storage: test_storage))
        response = imaging_api.find_images_by_tags(AsposeImagingCloud::FindImagesByTagsRequest([tag], search_context_id, similarity_threshold: 60, max_count: 5, storage: test_storage))
        assert_equal(1, response.result.size)
        assert(response.results[0].image_id.include?('2.jpg'))
      end

      AiApiTester.run_test_with_logging('FindSimilarImagesByTagTest', test)
    end
  end
end
