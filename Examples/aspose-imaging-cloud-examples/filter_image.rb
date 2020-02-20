# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="filter_image.rb">
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
  # Apply a filtering effect to an image example
  class FilterImage < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Filter image example:')
    end

    def get_sample_image_file_name
      'FilterEffectSampleImage.psd'
    end

    # Applies filtering effect to an image from cloud storage
    def filter_image_from_storage
      puts('Apply filtering effect to an image from clouds storage')

      upload_sample_image_to_cloud

      filter_type = 'BigRectangular'
      filter_properties = AsposeImagingCloud::BigRectangularFilterProperties.new
      format = 'gif'
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::FilterEffectImageRequest.new(
          get_sample_image_file_name, filter_type, filter_properties, format, folder, storage)

      puts("Call FilterEffectImage with params: filter type: #{filter_type}, format: #{format}")

      updated_image = imaging_api.filter_effect_image(request)
      save_updated_sample_image_to_output(updated_image, false, format)
      puts
    end

    # Applies filtering effect to an image and upload updated image to Cloud Storage
    def filter_image_and_upload_to_storage
      puts('Apply filtering effect to an image abd upload to cloud storage')

      upload_sample_image_to_cloud

      filter_type = 'BigRectangular'
      filter_properties = AsposeImagingCloud::BigRectangularFilterProperties.new
      format = 'gif'
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::FilterEffectImageRequest.new(
          get_sample_image_file_name, filter_type, filter_properties, format, folder, storage)

      puts("Call FilterEffectImage with params: filter type: #{filter_type}, format: #{format}")

      updated_image = imaging_api.filter_effect_image(request)
      upload_image_to_cloud(get_modified_sample_image_file_name(false, format), updated_image)
      puts
    end
  end
end