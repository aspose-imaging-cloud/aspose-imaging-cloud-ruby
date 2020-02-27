# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="image_properties.rb">
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
  class ImageProperties < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Image properties example:')
    end

    def get_sample_image_file_name
      'PropertiesOfSampleImage.tiff'
    end

    # Get properties of an image, which is store in the cloud
    def get_image_properties_from_storage
      puts('Get properties of an image in cloud storage')

      upload_sample_image_to_cloud

      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetImagePropertiesRequest.new(get_sample_image_file_name, folder, storage)

      puts('Call GetImageProperties')

      response = imaging_api.get_image_properties(request)
      output_properties_to_file('ImageProperties.txt', response)
      puts
    end

    # Get properties of an image. Image data is passed in a request stream
    def extract_image_properties_from_request_body
      puts('Get properties of an image from request body')

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::ExtractImagePropertiesRequest.new(input_stream)

      puts('Call ExtractImageProperties')

      response = imaging_api.extract_image_properties(request)
      output_properties_to_file('ImagePropertiesFromRequest.txt', response)
      puts
    end
  end
end
