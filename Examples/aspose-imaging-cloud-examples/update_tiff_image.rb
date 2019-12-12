# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="update_tiff_image.rb">
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
  # Update TIFF image example
  class UpdateTiffImage < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Update TIFF image example:')
    end

    def get_sample_image_file_name
      'TiffSampleImage.tiff'
    end

    # Update parameters of a TIFF image. The image is saved in the cloud
    def modify_tiff_from_storage
      puts('Update parameters of a TIFF image from cloud storage')

      upload_sample_image_to_cloud

      compression = 'adobedeflate'
      resolution_unit = 'inch'
      bit_depth = 1
      horizontal_resolution = 150.0
      vertical_resolution = 150.0
      from_scratch = nil
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::ModifyTiffRequest.new(get_sample_image_file_name, bit_depth, compression, resolution_unit, horizontal_resolution, vertical_resolution, from_scratch, folder, storage)

      puts("Call ModifyTiff with params: compression: #{compression}, resolution unit: #{resolution_unit}, bit depth: #{bit_depth}, horizontal resolution: #{horizontal_resolution}, vertical resolution: #{vertical_resolution}")

      updated_image = imaging_api.modify_tiff(request)
      save_updated_sample_image_to_output(updated_image, false)
      puts
    end

    # Update parameters of a TIFF image, and upload updated image to Cloud Storage
    def modify_tiff_and_upload_to_storage
      puts('Update parameters of a TIFF image and upload to cloud storage')

      upload_sample_image_to_cloud

      compression = 'adobedeflate'
      resolution_unit = 'inch'
      bit_depth = 1
      horizontal_resolution = 150.0
      vertical_resolution = 150.0
      from_scratch = nil
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::ModifyTiffRequest.new(get_sample_image_file_name, bit_depth, compression, resolution_unit, horizontal_resolution, vertical_resolution, from_scratch, folder, storage)

      puts("Call ModifyTiff with params: compression: #{compression}, resolution unit: #{resolution_unit}, bit depth: #{bit_depth}, horizontal resolution: #{horizontal_resolution}, vertical resolution: #{vertical_resolution}")

      updated_image = @imaging_api.modify_tiff(request)
      upload_image_to_cloud(get_modified_sample_image_file_name, updated_image)
      puts
    end

    # Update parameters of a TIFF image. Image data is passed in a request stream
    def create_modified_tiff_from_request_body
      puts('Update parameters of a TIFF image from request body')

      compression = 'adobedeflate'
      resolution_unit = 'inch'
      bit_depth = 1
      horizontal_resolution = 150.0
      vertical_resolution = 150.0
      from_scratch = nil
      storage = nil # We are using default Cloud Storage
      out_path = nil # Path to updated file (if this is empty, response contains streamed image)

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::CreateModifiedTiffRequest.new(input_stream, bit_depth, compression, resolution_unit, horizontal_resolution, vertical_resolution, from_scratch, out_path, storage)

      puts("Call CreateModifiedTiff with params: compression: #{compression}, resolution unit: #{resolution_unit}, bit depth: #{bit_depth}, horizontal resolution: #{horizontal_resolution}, vertical resolution: #{vertical_resolution}")

      updated_image = imaging_api.create_modified_tiff(request)
      save_updated_sample_image_to_output(updated_image, true)
      puts
    end

    # Update parameters of TIFF image according to fax parameters
    def update_tiff_to_fax_from_storage
      puts('Update parameters of TIFF image according to fax parameters')

      upload_sample_image_to_cloud

      # Update TIFF Image parameters according to fax parameters
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::ConvertTiffToFaxRequest.new(get_sample_image_file_name, storage, folder)

      puts('Call ConvertTiffToFax')

      updated_image = imaging_api.convert_tiff_to_fax(request)
      save_updated_image_to_output('ConvertTiffToFax.tiff', updated_image)
      puts
    end

    # Appends existing TIFF image to another existing TIFF image (i.e. merges TIFF images)
    def append_tiff_from_storage
      puts('Appends existing TIFF image to another existing TIFF image')

      append_file_name = 'Append.tiff' # Image file name to be appended to original one

      upload_sample_image_to_cloud
      upload_image_to_cloud(append_file_name, File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, append_file_name))

      # Update TIFF Image parameters according to fax parameters
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      update_request = AsposeImagingCloud::AppendTiffRequest.new(get_sample_image_file_name, append_file_name, storage, folder)

      puts('Call AppendTiff')

      imaging_api.append_tiff(update_request)

      # Download updated file to local storage
      download_request = AsposeImagingCloud::DownloadFileRequest.new(File.join(ImagingBase::CLOUD_PATH, get_sample_image_file_name), storage)
      updated_image = imaging_api.download_file(download_request)
      save_updated_image_to_output('AppendToTiff.tiff', updated_image)
      puts
    end
  end
end
