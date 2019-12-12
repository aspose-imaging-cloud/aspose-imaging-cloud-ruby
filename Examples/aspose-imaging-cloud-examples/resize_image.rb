# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="resize_image.rb">
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

require_relative './imaging_base'

module AsposeImagingCloudExamples
  # Resize image example
  class ResizeImage < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Resize image example:')
    end

    def get_sample_image_file_name
      'ResizeSampleImage.psd'
    end

    # Resizes the image from cloud storage
    def resize_image_from_storage
      puts('Resizes the image from cloud storage')

      upload_sample_image_to_cloud

      # Please refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-Resize
      # for possible output formats
      format = 'gif' # Resulting image format
      new_width = 100
      new_height = 150
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::ResizeImageRequest.new(get_sample_image_file_name, new_width, new_height, format, folder, storage)

      puts("Call ResizeImage with params: new width: #{new_width}, new height: #{new_height}")

      updated_image = imaging_api.resize_image(request)
      save_updated_sample_image_to_output(updated_image, false, format)
      puts
    end

    # Resize an existing image, and upload updated image to Cloud Storage
    def resize_image_and_upload_to_storage
      puts('Resize an image and upload to cloud storage')

      upload_sample_image_to_cloud

      # Please refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-Resize
      # for possible output formats
      format = 'gif' # Resulting image format
      new_width = 100
      new_height = 150
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::ResizeImageRequest.new(get_sample_image_file_name, new_width, new_height, format, folder, storage)

      puts("Call ResizeImage with params: new width: #{new_width}, new height: #{new_height}")

      updated_image = @imaging_api.resize_image(request)
      upload_image_to_cloud(get_modified_sample_image_file_name(false, format), updated_image)
      puts
    end

    # Resize an image. Image data is passed in a request stream
    def create_resized_image_from_request_body
      puts('Resize an image from request body')

      # Please refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-Resize
      # for possible output formats
      format = 'gif' # Resulting image format
      new_width = 100
      new_height = 150
      storage = nil # We are using default Cloud Storage
      out_path = nil # Path to updated file (if this is empty, response contains streamed image)

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::CreateResizedImageRequest.new(input_stream, new_width, new_height, format, out_path, storage)

      puts("Call CreateResizedImage with params: new width: #{new_width}, new height: #{new_height}")

      updated_image = imaging_api.create_resized_image(request)
      save_updated_sample_image_to_output(updated_image, false, format)
      puts
    end
  end
end

