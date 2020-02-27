# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="update_image.rb">
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
  # Update EMF image example
  class UpdateImage < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Update image example:')
    end

    def get_sample_image_file_name
      'UpdateSampleImage.gif'
    end

    # Updates the image
    def update_image_from_storage
      puts('Update an image from cloud storage')

      upload_sample_image_to_cloud

      # Please refer to
      #   https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-Update
      # for possible output formats
      format = 'pdf' # Resulting image format
      new_width = 300
      new_height = 450
      x = 10
      y = 10
      rect_width = 200
      rect_height = 300
      rotate_flip_method = 'Rotate90FlipX'
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::UpdateImageRequest.new(
          get_sample_image_file_name, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, format,
          folder, storage)

      puts("Call UpdateImage with params: new width: #{new_width}, new height: #{new_height}, x: #{x}, y: #{y}, " +
               "rect width: #{rect_width}, rectHeight: #{rect_height}, rotate/flip method: #{rotate_flip_method}, " +
               "format: #{format}")

      updated_image = imaging_api.update_image(request)
      save_updated_sample_image_to_output(updated_image, false)
      puts
    end

    # Updates the sample image and upload to Cloud Storage
    def update_image_and_upload_to_storage
      puts('Update an image and upload to cloud storage')

      upload_sample_image_to_cloud

      # Please refer to
      #   https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-Update
      # for possible output formats
      format = 'pdf' # Resulting image format
      new_width = 300
      new_height = 450
      x = 10
      y = 10
      rect_width = 200
      rect_height = 300
      rotate_flip_method = 'Rotate90FlipX'
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::UpdateImageRequest.new(
          get_sample_image_file_name, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, format,
          folder, storage)

      puts("Call UpdateImage with params: new width: #{new_width}, new height: #{new_height}, x: #{x}, y: #{y}, " +
               "rect width: #{rect_width}, rectHeight: #{rect_height}, rotate/flip method: #{rotate_flip_method}, " +
               "format: #{format}")

      updated_image = @imaging_api.update_image(request)
      upload_image_to_cloud(get_modified_sample_image_file_name, updated_image)
      puts
    end

    # Update parameters of a EMF image. Image data is passed in a request stream
    def create_updated_image_from_request_body
      puts('Update an image from request body')

      # Please refer to
      #   https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-Update
      # for possible output formats
      format = 'pdf' # Resulting image format
      new_width = 300
      new_height = 450
      x = 10
      y = 10
      rect_width = 200
      rect_height = 300
      rotate_flip_method = 'Rotate90FlipX'
      storage = nil # We are using default Cloud Storage
      out_path = nil # Path to updated file (if this is empty, response contains streamed image)

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::CreateUpdatedImageRequest.new(
          input_stream, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, format, out_path,
          storage)

      puts("Call CreateUpdatedImage with params: new width: #{new_width}, new height: #{new_height}, x: #{x}, y: #{y}" +
               ", rect width: #{rect_width}, rectHeight: #{rect_height}, rotate/flip method: #{rotate_flip_method}, " +
               "format: #{format}")

      updated_image = imaging_api.create_updated_image(request)
      save_updated_sample_image_to_output(updated_image, true)
      puts
    end
  end
end

