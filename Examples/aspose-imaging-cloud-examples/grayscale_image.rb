# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="grayscale_image.rb">
#    Copyright (c) 2018-2020 Aspose Pty Ltd. All rights reserved.
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
  # Grayscale image example
  class GrayscaleImage < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Grayscale image example:')
    end

    def get_sample_image_file_name
      'GrayscaleSampleImage.bmp'
    end

    # Grayscales the image from cloud storage
    def grayscale_image_from_storage
      puts('Grayscales the image from cloud storage')

      upload_sample_image_to_cloud

      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GrayscaleImageRequest.new(
          get_sample_image_file_name, folder, storage)

      puts("Call GrayscaleImage")

      updated_image = imaging_api.grayscale_image(request)
      save_updated_sample_image_to_output(updated_image, false, "bmp")
      puts
    end

    # Grayscale an existing image, and upload updated image to Cloud Storage
    def grayscale_image_and_upload_to_storage
      puts('Grayscales the image and upload to cloud storage')

      upload_sample_image_to_cloud

      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GrayscaleImageRequest.new(
          get_sample_image_file_name, folder, storage)

      puts("Call GrayscaleImage")

      updated_image = @imaging_api.grayscale_image(request)
      upload_image_to_cloud(get_modified_sample_image_file_name(false, "bmp"), updated_image)
      puts
    end

    # Grayscale an image. Image data is passed in a request stream
    def create_Grayscaled_image_from_request_body
      puts('Grayscales the image from request body')

      storage = nil # We are using default Cloud Storage
      out_path = nil # Path to updated file (if this is empty, response contains streamed image)

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::CreateGrayscaledImageRequest.new(
          input_stream, out_path, storage)

      puts("Call CreateGrayscaledImage")

      updated_image = imaging_api.create_grayscaled_image(request)
      save_updated_sample_image_to_output(updated_image, false, "bmp")
      puts
    end
  end
end
