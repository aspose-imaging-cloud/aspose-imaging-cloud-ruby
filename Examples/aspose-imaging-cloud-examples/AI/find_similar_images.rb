# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="find_similar_images.rb">
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

require 'open-uri'
require_relative './imaging_ai_base'

module AsposeImagingCloudExamples
  # Find similar images example
  class FindSimilarImages < ImagingAiBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Find similar images example:')

      @image_to_find = '4.jpg'
      @image_to_find_by_tag = 'ComparingImageSimilar75.jpg'
      @images_path = 'FindSimilar'
    end

    # Prepares the search context
    def prepare_search_context
      create_search_context

      # Upload images to Cloud Storage
      %w[1.jpg 2.jpg 3.jpg 4.jpg 5.jpg 6.jpg 7.jpg 8.jpg 9.jpg 10.jpg].each do |image_name|
        # Upload local image to Cloud Storage
        upload_image_to_cloud(File.join(images_path, image_name))
      end

      create_image_features(images_path, true)

      puts
    end

    # Finds the similar images
    def find_similar_images
      puts('Finds the similar images:')

      find_image_id = File.join(ImagingAiBase::CLOUD_PATH, images_path, image_to_find)
      similarity_threshold = 60.0
      max_count = 3
      folder = nil
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::FindSimilarImagesRequest.new(
          search_context_id, similarity_threshold, max_count, nil, find_image_id, folder, storage)

      puts("Call FindSimilarImages with params: similarity threshold:" +
               "#{similarity_threshold.to_s}, max count: #{max_count.to_s}, image id: #{find_image_id}")

      response = imaging_api.find_similar_images(request)

      puts('Results count: ' + response.results.length.to_s)
      puts
    end

    # Finds the images by tag
    def find_images_by_tag
      puts('Finds the images by tag:')

      file_name = image_to_find_by_tag
      tag_name = 'ImageTag'
      similarity_threshold = 60.0
      max_count = 5
      folder = nil
      storage = nil # We are using default Cloud Storage

      input_stream = File.open(File.join(ImagingAiBase::EXAMPLE_IMAGES_FOLDER, file_name), 'r')
      create_tag_request = AsposeImagingCloud::CreateImageTagRequest.new(
          input_stream, search_context_id, tag_name, folder, storage)

      puts('Call CreateImageTag with params: tag name: ' + tag_name)

      imaging_api.create_image_tag(create_tag_request)

      tags = JSON.dump([tag_name])
      find_request = AsposeImagingCloud::FindImagesByTagsRequest.new(
          tags, search_context_id, similarity_threshold, max_count, folder, storage)

      puts("Call FindImagesByTags with params: similarity threshold:" +
               " #{similarity_threshold.to_s}, max count: #{max_count.to_s}, tags: #{tags}")

      find_response = imaging_api.find_images_by_tags(find_request)

      find_response.results.each do |find_result|
        puts("Image name: #{find_result.image_id}, similarity: #{find_result.similarity.to_s}")
      end
      puts
    end

    # Finds similar images from the URL source
    def search_image_from_web_source
      puts('Finds similar images from the URL:')

      similarity_threshold = 30.0
      max_count = 5
      folder = ImagingAiBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      # Add images from the website to the search context
      image_source_url = URI.encode('https://www.f1news.ru/interview/hamilton/140909.shtml')
      imaging_api.create_web_site_image_features(AsposeImagingCloud::CreateWebSiteImageFeaturesRequest.new(
          search_context_id, image_source_url, folder, storage))

      wait_idle(search_context_id)

      # Download the image from the website
      image_data = open(URI.encode('https://cdn.f1ne.ws/userfiles/hamilton/140909.jpg'))

      # Resize downloaded image
      resized_image = imaging_api.create_resized_image(AsposeImagingCloud::CreateResizedImageRequest.new(
          image_data, 600, 400, 'jpg', nil, storage))

      # Upload resized image to cloud
      image_name = 'ReverseSearch.jpg'
      response = imaging_api.upload_file(AsposeImagingCloud::UploadFileRequest.new(
          ImagingAiBase::CLOUD_PATH + '/' + image_name, resized_image, storage))

      # Find similar images in the search context
      find_response = imaging_api.find_similar_images(AsposeImagingCloud::FindSimilarImagesRequest.new(
          search_context_id, similarity_threshold, max_count, nil,
          ImagingAiBase::CLOUD_PATH + '/' + image_name, folder, storage))

      puts('Similar images found: ' + find_response.results.length.to_s)
      puts
    end

    private

    attr_reader :image_to_find, :image_to_find_by_tag, :images_path
  end
end
