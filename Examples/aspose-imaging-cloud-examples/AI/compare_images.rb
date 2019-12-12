# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="compare_images.rb">
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
#
require_relative './imaging_ai_base'

module AsposeImagingCloudExamples
  # Compare images example
  class CompareImages < ImagingAiBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Compare images example:')

      @comparable_image = 'ComparableImage.jpg'
      @comparable_image_similar_less_15 = 'ComparingImageSimilar15.jpg'
      @comparable_image_similar_more_75 = 'ComparingImageSimilar75.jpg'
    end

    # Prepares the search context
    def prepare_search_context
      create_search_context

      # Upload images to Cloud Storage
      [comparable_image, comparable_image_similar_more_75].each do |image_name|
        # Upload local image to Cloud Storage
        upload_image_to_cloud(image_name)
      end

      create_image_features(comparable_image, false)
      create_image_features(comparable_image_similar_more_75, false)
    end

    # Compares the two images in cloud
    def compare_two_images_in_cloud
      puts('Compares the two images in cloud storage:')

      #  Compare two images
      folder = ImagingAiBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::CompareImagesRequest.new(search_context_id, comparable_image, nil, comparable_image_similar_more_75, folder, storage)

      puts("Call CompareImages with params: image1: #{comparable_image}, image2: #{comparable_image_similar_more_75}")

      search_results = imaging_api.compare_images(request)

      similarity = search_results.results[0].similarity
      puts('Images Similarity: ' + similarity)
      puts
    end

    # Compares the loaded image to image in cloud
    def compare_loaded_image_to_image_in_cloud
      puts('Compares the loaded image to image in cloud storage:')

      input_stream = File.open(File.join(ImagingAiBase::EXAMPLE_IMAGES_FOLDER, comparable_image_similar_less_15))
      request = AsposeImagingCloud::CompareImagesRequest.new(search_context_id, comparable_image, input_stream)

      puts('Call CompareImages with params: image: ' + comparable_image)

      search_results = imaging_api.compare_images(request)

      similarity = search_results.results[0].similarity
      puts('Images Similarity: ' + similarity)
      puts
    end

    private

    attr_reader :comparable_image, :comparable_image_similar_less_15, :comparable_image_similar_more_75
  end
end