# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="crop_image.rb">
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
  # Crop image example
  class CropImage < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Crop image example:')
    end

    def get_sample_image_file_name
      'CropSampleImage.bmp'
    end

    # Crops the image from cloud storage
    def crop_image_from_storage
      puts('Crops the image from cloud storage')

      upload_sample_image_to_cloud

      # Please refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-Crop
      # for possible output formats
      format = 'jpg' # Resulting image format
      x = 10
      y = 10
      width = 100
      height = 150
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::CropImageRequest.new(get_sample_image_file_name, x, y, width, height, format, folder, storage)

      puts("Call CropImage with params: x: #{x}, y: #{y}, width: #{width}, height: #{height}")

      updated_image = imaging_api.crop_image(request)
      save_updated_sample_image_to_output(updated_image, false, format)
      puts
    end

    # Crop an existing image, and upload updated image to Cloud Storage
    def crop_image_and_upload_to_storage
      puts('Crops the image and upload to cloud storage')

      upload_sample_image_to_cloud

      # Please refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-Crop
      # for possible output formats
      format = 'jpg' # Resulting image format
      x = 10
      y = 10
      width = 100
      height = 150
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::CropImageRequest.new(get_sample_image_file_name, x, y, width, height, format, folder, storage)

      puts("Call CropImage with params: x: #{x}, y: #{y}, width: #{width}, height: #{height}")

      updated_image = @imaging_api.crop_image(request)
      upload_image_to_cloud(get_modified_sample_image_file_name(false, format), updated_image)
      puts
    end

    # Crop an image. Image data is passed in a request stream
    def create_cropped_image_from_request_body
      puts('Crops the image from request body')

      # Please refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-Crop
      # for possible output formats
      format = 'jpg' # Resulting image format
      x = 10
      y = 10
      width = 100
      height = 150
      storage = nil # We are using default Cloud Storage
      out_path = nil # Path to updated file (if this is empty, response contains streamed image)

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::CreateCroppedImageRequest.new(input_stream, x, y, width, height, format, out_path, storage)

      puts("Call CreateCroppedImage with params: x: #{x}, y: #{y}, width: #{width}, height: #{height}")

      updated_image = imaging_api.create_cropped_image(request)
      save_updated_sample_image_to_output(updated_image, false, format)
      puts
    end
  end
end
