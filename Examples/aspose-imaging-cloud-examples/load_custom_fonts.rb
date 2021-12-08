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
  # Load custom fonts example
  class LoadCustomFonts < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Load custom fonts example:')
    end

    def get_sample_image_file_name
      'ImageWithCustomFonts.emz'
    end

    # Exports the image from cloud storage
    def using_custom_fonts_for_vector_image_conversion
      puts('Using custom fonts for vector image conversion example')

      upload_sample_image_to_cloud
	  
	  # custom fonts should be loaded to storage to 'Fonts' folder
      # 'Fonts' folder should be placed to the root of the cloud storage
	  upload_fonts_to_cloud

      # Please refer to
      #   https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-Export(SaveAs)
      # for possible output formats
      format = 'png' # Resulting image format
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::ConvertImageRequest.new(get_sample_image_file_name, format, folder, storage)

      puts("Call ExportImage with params: format: #{format}")

      updated_image = imaging_api.convert_image(request)
      save_updated_sample_image_to_output(updated_image, false, format)
      puts
    end
	
	# Uploads the font files to cloud
	def upload_fonts_to_cloud()       
        fonts_folder = File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, "Fonts");
		font_files = Dir[fonts_folder + "/*.ttf"]
		font_files.each do |file_name|
		  if !File.directory? file_name
			puts(file_name)
			upload_image_to_cloud(File.join("Fonts", font_file), File.join(fonts_folder, font_file))			
		  end
		end	
	end

	# Uploads the file to cloud
    def upload_file_to_cloud(file_name, file)
      upload_file_request = AsposeImagingCloud::UploadFileRequest.new(file_name, file)
      result = self.imaging_api.upload_file(upload_file_request)
      if result.errors.any?
        puts('Uploading errors count: ' + result.errors.size.to_s)
      else
        puts('File ' + file_name + ' is uploaded to cloud storage')
      end
    end
  end
end
