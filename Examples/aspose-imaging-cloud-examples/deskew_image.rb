# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="deskew_image.rb">
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
  # Deskew image example
  class DeskewImage < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Deskew image example:')
    end

    def get_sample_image_file_name
      'DeskewSampleImage.bmp'
    end

    # Deskews the image from cloud storage
    def deskew_image_from_storage
      puts('Deskews the image from cloud storage')

      upload_sample_image_to_cloud

      resize_proportionally = true
      bg_color = "green"
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::DeskewImageRequest.new(
          get_sample_image_file_name, resize_proportionally, bg_color, folder, storage)

      puts("Call DeskewImage with params: resize_proprtionally: #{resize_proportionally}, bg_color: #{bg_color}")

      updated_image = imaging_api.deskew_image(request)
      save_updated_sample_image_to_output(updated_image, false, "bmp")
      puts
    end

    # Deskew an existing image, and upload updated image to Cloud Storage
    def deskew_image_and_upload_to_storage
      puts('Deskews the image and upload to cloud storage')

      upload_sample_image_to_cloud

      resize_proportionally = true
      bg_color = "green"
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::DeskewImageRequest.new(
          get_sample_image_file_name, resize_proportionally, bg_color, folder, storage)

      puts("Call DeskewImage with params: resize_proprtionally: #{resize_proportionally}, bg_color: #{bg_color}")

      updated_image = @imaging_api.deskew_image(request)
      upload_image_to_cloud(get_modified_sample_image_file_name(false, "bmp"), updated_image)
      puts
    end

    # Deskew an image. Image data is passed in a request stream
    def create_deskewed_image_from_request_body
      puts('Deskews the image from request body')

      resize_proportionally = true
      bg_color = "green"
      storage = nil # We are using default Cloud Storage
      out_path = nil # Path to updated file (if this is empty, response contains streamed image)

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::CreateDeskewedImageRequest.new(
          input_stream, resize_proportionally, bg_color, out_path, storage)

      puts("Call CreateDeskewedImage with params: resize_proprtionally: #{resize_proportionally}, bg_color: #{bg_color}")

      updated_image = imaging_api.create_deskewed_image(request)
      save_updated_sample_image_to_output(updated_image, false, "bmp")
      puts
    end
  end
end
