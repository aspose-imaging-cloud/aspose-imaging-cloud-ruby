# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="export_image.rb">
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
  # Export image example
  class ExportImage < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Export image example:')
    end

    def get_sample_image_file_name
      'ExportSampleImage.bmp'
    end

    # Exports the image from cloud storage
    def save_image_as_from_storage
      puts('Exports the image from cloud storage')

      upload_sample_image_to_cloud

      # Please refer to
      #   https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-Export(SaveAs)
      # for possible output formats
      format = 'pdf' # Resulting image format
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::ConvertImageRequest.new(get_sample_image_file_name, format, folder, storage)

      puts("Call ExportImage with params: format: #{format}")

      updated_image = imaging_api.convert_image(request)
      save_updated_sample_image_to_output(updated_image, false, format)
      puts
    end

    # Export an existing image, and upload updated image to Cloud Storage
    def save_image_as_and_upload_to_storage
      puts('Export an image to another format and upload to cloud storage')

      upload_sample_image_to_cloud

      # Please refer to
      #   https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-Export(SaveAs)
      # for possible output formats
      format = 'pdf' # Resulting image format
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::ConvertImageRequest.new(get_sample_image_file_name, format, folder, storage)

      puts("Call ExportImage with params: format: #{format}")

      updated_image = @imaging_api.convert_image(request)
      upload_image_to_cloud(get_modified_sample_image_file_name(false, format), updated_image)
      puts
    end

    # Export an image. Image data is passed in a request stream
    def create_saved_image_as_from_request_body
      puts('Export an image to another format. Image data is passed in a request body')

      # Please refer to
      #   https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-Export(SaveAs)
      # for possible output formats
      format = 'pdf' # Resulting image format
      storage = nil # We are using default Cloud Storage
      out_path = nil # Path to updated file (if this is empty, response contains streamed image)

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::CreateConvertedImageRequest.new(input_stream, format, out_path, storage)

      puts("Call CreateExportedImage with params: format: #{format}")

      updated_image = imaging_api.create_converted_image(request)
      save_updated_sample_image_to_output(updated_image, false, format)
      puts
    end
  end
end
