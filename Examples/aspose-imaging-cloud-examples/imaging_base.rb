# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="imaging_base.rb">
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

require 'fileutils'
require 'aspose-imaging-cloud'

module AsposeImagingCloudExamples
  # Base class for images modifying API
  class ImagingBase

    # The example images folder path
    EXAMPLE_IMAGES_FOLDER = File.join(File.dirname(File.dirname(__FILE__)), 'Images')

    # The output folder path
    OUTPUT_FOLDER = File.join(File.dirname(File.dirname(__FILE__)), 'Output')

    # The cloud path
    CLOUD_PATH = 'Examples'

    def initialize(imaging_api)
      @imaging_api = imaging_api
    end

    protected

    attr_reader :imaging_api

    def get_sample_image_file_name
      raise 'get_sample_image_file_name must be implemented'
    end

    # Gets the name of the modified sample image file
    def get_modified_sample_image_file_name(from_request = false, new_format_extension = nil)
      if new_format_extension
        filename_part = File.basename(self.get_sample_image_file_name, ".*")
        filename = filename_part + '.' + new_format_extension
      else
        filename = self.get_sample_image_file_name
      end
      from_request ? 'ModifiedFromRequest' + filename : 'Modified' + filename
    end

    # Uploads the example image to cloud
    def upload_sample_image_to_cloud
      local_input_image = File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, self.get_sample_image_file_name)
      self.upload_image_to_cloud(self.get_sample_image_file_name, local_input_image)
    end

    # Uploads the image to cloud
    def upload_image_to_cloud(image_name, image)
      upload_file_request = AsposeImagingCloud::UploadFileRequest.new(File.join(CLOUD_PATH, image_name), image)
      result = self.imaging_api.upload_file(upload_file_request)
      if result.errors.any?
        puts('Uploading errors count: ' + result.errors.size.to_s)
      else
        puts('Image ' + image_name + ' is uploaded to cloud storage')
      end
    end

    # Saves the updated image to local output folder
    def save_updated_sample_image_to_output(updated_image, from_request, new_format_extension = nil)
      new_file_name = self.get_modified_sample_image_file_name(from_request, new_format_extension)
      self.save_updated_image_to_output(new_file_name, updated_image)
    end

    # Saves the updated image to output folder
    def save_updated_image_to_output(image_name, updated_image)
      path = File.absolute_path(File.join(ImagingBase::OUTPUT_FOLDER, image_name))
      File.write(path, updated_image)
      puts('Image ' + image_name + ' is saved to ' + File.dirname(path))
    end

    # Outputs the properties to file
    def output_properties_to_file(file_name, imaging_response)
      path = File.absolute_path(File.join(ImagingBase::OUTPUT_FOLDER, file_name))
      File.open(path, "w") { |output_file|
                             output_file.write('Width: ' + imaging_response.width.to_s)
                             output_file.write('Height: ' + imaging_response.height.to_s)
                             output_file.write('Horizontal resolution: ' + imaging_response.horizontal_resolution.to_s)
                             output_file.write('Vertical resolution: ' + imaging_response.vertical_resolution.to_s)
                             output_file.write('Bits per pixel: ' + imaging_response.bits_per_pixel.to_s)
                             if imaging_response.tiff_properties
                               output_file.write('Tiff properties:')
                               output_file.write('Frames count: ' + imaging_response.tiff_properties.frames.size.to_s)
                               output_file.write('Camera owner name: ' + (imaging_response.tiff_properties.exif_data ? imaging_response.tiff_properties.exif_data.camera_owner_name : ''))
                               output_file.write('Byte order: ' + imaging_response.tiff_properties.byte_order.to_s)
                             end
                           }
      puts('File ' + file_name + ' is saved to ' + File.dirname(path))
    end

    def print_header(header)
      puts(header)
      puts
    end
  end
end
