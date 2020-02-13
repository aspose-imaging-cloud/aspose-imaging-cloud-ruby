# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="imaging_ai_base.rb">
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

require 'aspose-imaging-cloud'

module AsposeImagingCloudExamples
  # Base class for AI operations with images
  class ImagingAiBase

    # The example images folder path
    EXAMPLE_IMAGES_FOLDER = File.join(File.dirname(File.dirname(
        File.dirname(__FILE__))), File.join('Images', 'AI'))

    # The output folder path
    OUTPUT_FOLDER = File.join(File.dirname(File.dirname(
        File.dirname(__FILE__))), File.join('Output', 'AI'))

    # The cloud path
    CLOUD_PATH = File.join('Examples', 'AI')

    def initialize(imaging_api)
      @imaging_api = imaging_api
    end

    # Deletes the image search context
    def delete_search_context
      folder = nil # File will be saved at the root of the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::DeleteImageSearchRequest.new(search_context_id, folder, storage)
      imaging_api.delete_image_search(request)

      puts("Deleted new Search context with SearchContextId: #{search_context_id}")
      puts
    end

    protected

    attr_reader :imaging_api

    attr_accessor :search_context_id

    # Creates the image search
    def create_search_context
      detector = 'akaze'
      matching_algorithm = 'randomBinaryTree'
      folder = nil # File will be saved at the root of the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::CreateImageSearchRequest.new(detector, matching_algorithm, folder, storage)
      status = imaging_api.create_image_search(request)

      self.search_context_id = status.id

      puts("Created new Search context with SearchContextId: #{search_context_id}")
      puts
    end

    # Extract images features and add them to search context
    def create_image_features(source_path, is_folder)
      folder = nil # File will be saved at the root of the storage
      storage = nil # We are using default Cloud Storage

      request = is_folder ?
                    AsposeImagingCloud::CreateImageFeaturesRequest.new(
                        search_context_id,
                        nil,
                        nil,
                        File.join(ImagingAiBase::CLOUD_PATH, source_path),
                        folder,
                        storage)
                    :
                    AsposeImagingCloud::CreateImageFeaturesRequest.new(
                        search_context_id,
                        nil,
                        File.join(ImagingAiBase::CLOUD_PATH, source_path),
                        nil,
                        folder,
                        storage)

      imaging_api.create_image_features(request)

      if is_folder
        puts('Creating Search context image features...')
        wait_idle(search_context_id)
      else
        puts("Created Search context image features for #{source_path}")
      end
    end

    # Update images features in search context
    def upload_image_to_cloud(image_name, sub_folder = nil)
      folder = sub_folder ?
                   File.join(ImagingAiBase::EXAMPLE_IMAGES_FOLDER, sub_folder)
                   : ImagingAiBase::EXAMPLE_IMAGES_FOLDER

      local_input_image = File.open(File.join(folder, image_name), 'r')
      request = AsposeImagingCloud::UploadFileRequest.new(
          File.join(ImagingAiBase::CLOUD_PATH, image_name), local_input_image)
      imaging_api.upload_file(request)

      puts("Image #{image_name} was uploaded to cloud storage")
    end

    def print_header(header)
      puts(header)
      puts
    end

    # Waits the idle
    def wait_idle(search_context_id)
      puts('Waiting Search context Idle...')

      folder = nil # File will be saved at the root of the storage
      storage = nil # We are using default Cloud Storage

      while imaging_api.get_image_search_status(
          AsposeImagingCloud::GetImageSearchStatusRequest.new(
              search_context_id, folder, storage))
            .search_status != 'Idle'
        sleep(1)
      end
    end
  end
end
