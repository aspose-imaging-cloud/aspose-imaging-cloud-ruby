# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="update_psd_image.rb">
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
  # Update PSD image example
  class UpdatePsdImage < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Update PSD image example:')
    end

    def get_sample_image_file_name
      'UpdatePSDSampleImage.psd'
    end

    # Update parameters of a PSD image. The image is saved in the cloud
    def modify_psd_from_storage
      puts('Update parameters of a PSD image from cloud storage')

      upload_sample_image_to_cloud

      channels_count = 3
      compression_method = 'raw'
      from_scratch = nil
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::ModifyPsdRequest.new(
          get_sample_image_file_name, channels_count, compression_method, from_scratch, folder, storage)

      puts("Call ModifyPsd with params: channels count: #{channels_count}, compression method: #{compression_method}")

      updated_image = imaging_api.modify_psd(request)
      save_updated_sample_image_to_output(updated_image, false)
      puts
    end

    # Update parameters of a PSD image, and upload updated image to Cloud Storage
    def modify_psd_and_upload_to_storage
      puts('Update parameters of a PSD image and upload to cloud storage')

      upload_sample_image_to_cloud

      channels_count = 3
      compression_method = 'raw'
      from_scratch = nil
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::ModifyPsdRequest.new(
          get_sample_image_file_name, channels_count, compression_method, from_scratch, folder, storage)

      puts("Call ModifyPsd with params: channels count: #{channels_count}, compression method: #{compression_method}")

      updated_image = @imaging_api.modify_psd(request)
      upload_image_to_cloud(get_modified_sample_image_file_name, updated_image)
      puts
    end

    # Update parameters of a PSD image. Image data is passed in a request stream
    def create_modified_psd_from_request_body
      puts('Update parameters of a PSD image from request body')

      channels_count = 3
      compression_method = 'raw'
      from_scratch = nil
      storage = nil # We are using default Cloud Storage
      out_path = nil # Path to updated file (if this is empty, response contains streamed image)

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::CreateModifiedPsdRequest.new(
          input_stream, channels_count, compression_method, from_scratch, out_path, storage)

      puts("Call CreateModifiedPsd with params: channels count: #{channels_count}, compression method: " +
               "#{compression_method}")

      updated_image = imaging_api.create_modified_psd(request)
      save_updated_sample_image_to_output(updated_image, true)
      puts
    end
  end
end
