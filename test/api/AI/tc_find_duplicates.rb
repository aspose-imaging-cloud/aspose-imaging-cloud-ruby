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
  class TestFindDuplicates < AiApiTester
    @comparable_image = 'ComparableImage.jpg'
    @comparing_image_similar_less_15 = 'ComparingImageSimilar15.jpg'
    @comparing_image_similar_more_75 = 'ComparingImageSimilar75.jpg'

    def test_find_duplicates
      test = lambda do
        add_image_features_to_search_context(original_data_folder + '/FindSimilar', is_folder: true)
        image = get_storage_path(@comparable_image)
        add_image_features_to_search_context(image)
        image = get_storage_path(@comparing_image_similar_less_15)
        add_image_features_to_search_context(image)
        image = get_storage_path(@comparing_image_similar_more_75)
        add_image_features_to_search_context(image)
        response = imaging_api.find_image_duplicates(AsposeImagingCloud::FindImageDuplicatesRequest(search_context_id, similarity_threshold: 80, storage: test_storage))
        assert_equal(1, response.duplicates.size)
      end

      AiApiTester.run_test_with_logging('FindDuplicatesTest', test)
    end
  end
end