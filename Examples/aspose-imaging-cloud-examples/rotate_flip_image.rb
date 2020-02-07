# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="rotate_flip_image.rb">
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
  # Rotate and/or flip image example
  class RotateFlipImage < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Rotate/flip image example:')
    end

    def get_sample_image_file_name
      'RotateFlipSampleImage.psd'
    end

    # Rotate and/or flip an image
    def rotate_flip_image_from_storage
      puts('Rotate and/or flip an image from cloud storage')

      upload_sample_image_to_cloud

      # Please refer to
      #   https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-RotateFlip
      # for possible output formats
      format = 'gif' # Resulting image format
      method = 'Rotate90FlipX' # RotateFlip method
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::RotateFlipImageRequest.new(
          get_sample_image_file_name, method, format, folder, storage)

      puts("Call RotateFlipImage with params: method: #{method}, format: #{format}")

      updated_image = imaging_api.rotate_flip_image(request)
      save_updated_sample_image_to_output(updated_image, false, format)
      puts
    end

    # Rotate and/or flip an image, and upload updated image to Cloud Storage
    def rotate_flip_image_and_upload_to_storage
      puts('Rotate/flip an image and upload to cloud storage')

      upload_sample_image_to_cloud

      # Please refer to
      #   https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-RotateFlip
      # for possible output formats
      format = 'gif' # Resulting image format
      method = 'Rotate90FlipX' # RotateFlip method
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::RotateFlipImageRequest.new(
          get_sample_image_file_name, method, format, folder, storage)

      puts("Call RotateFlipImage with params: method: #{method}, format: #{format}")

      updated_image = @imaging_api.rotate_flip_image(request)
      upload_image_to_cloud(get_modified_sample_image_file_name(false, format), updated_image)
      puts
    end

    # Rotate and/or flip an image. Image data is passed in a request stream
    def create_rotate_flipped_image_from_request_body
      puts('Rotate/flip an image from request body')

      # Please refer to
      #   https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-RotateFlip
      # for possible output formats
      format = 'gif' # Resulting image format
      method = 'Rotate90FlipX' # RotateFlip method
      storage = nil # We are using default Cloud Storage
      out_path = nil # Path to updated file (if this is empty, response contains streamed image)

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::CreateRotateFlippedImageRequest.new(input_stream, method, format, out_path, storage)

      puts("Call CreateRotateFlippedImage with params: method: #{method}, format: #{format}")

      updated_image = imaging_api.create_rotate_flipped_image(request)
      save_updated_sample_image_to_output(updated_image, false, format)
      puts
    end
  end
end

