# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="find_duplicate_images.rb">
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

require_relative './imaging_ai_base'

module AsposeImagingCloudExamples
  # Find duplicate images example
  class FindDuplicateImages < ImagingAiBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Find duplicate images example:')

      @comparable_image = 'ComparableImage.jpg'
      @comparable_image_similar_less_15 = 'ComparingImageSimilar15.jpg'
      @comparable_image_similar_more_75 = 'ComparingImageSimilar75.jpg'
    end

    # Prepares the search context
    def prepare_search_context
      create_search_context

      # Upload images to Cloud Storage
      [comparable_image, comparable_image_similar_less_15, comparable_image_similar_more_75].each do |image_name|
        # Upload local image to Cloud Storage
        upload_image_to_cloud(image_name)
      end

      create_image_features(comparable_image, false)
      create_image_features(comparable_image_similar_less_15, false)
      create_image_features(comparable_image_similar_more_75, false)

      puts
    end

    # Finds the image duplicates
    def find_image_duplicates
      puts('Finds the image duplicates:')

      similarity_threshold = 70.0
      folder = ImagingAiBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::FindImageDuplicatesRequest.new(search_context_id, similarity_threshold, folder, storage)

      puts('Call FindImageDuplicates with params: similarity threshold: ' + similarity_threshold.to_s)

      response = self.imaging_api.find_image_duplicates(request)
      puts('Duplicates count: ' + response.duplicates.length.to_s)
      puts
    end

    private

    attr_reader :comparable_image, :comparable_image_similar_less_15, :comparable_image_similar_more_75
  end
end
