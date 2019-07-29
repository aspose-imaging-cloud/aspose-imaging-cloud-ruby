=begin
#Aspose.Imaging Cloud API Reference

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.5

=end

# Common files
require 'AsposeImagingCloud/api_client'
require 'AsposeImagingCloud/api_error'
require 'AsposeImagingCloud/version'
require 'AsposeImagingCloud/configuration'

# Models
require 'AsposeImagingCloud/models/bmp_properties'
require 'AsposeImagingCloud/models/dicom_properties'
require 'AsposeImagingCloud/models/disc_usage'
require 'AsposeImagingCloud/models/djvu_properties'
require 'AsposeImagingCloud/models/dng_properties'
require 'AsposeImagingCloud/models/error'
require 'AsposeImagingCloud/models/error_details'
require 'AsposeImagingCloud/models/exif_data'
require 'AsposeImagingCloud/models/file_versions'
require 'AsposeImagingCloud/models/files_list'
require 'AsposeImagingCloud/models/files_upload_result'
require 'AsposeImagingCloud/models/gif_properties'
require 'AsposeImagingCloud/models/image_duplicates'
require 'AsposeImagingCloud/models/image_duplicates_set'
require 'AsposeImagingCloud/models/image_features'
require 'AsposeImagingCloud/models/imaging_response'
require 'AsposeImagingCloud/models/jfif_data'
require 'AsposeImagingCloud/models/jpeg2000_properties'
require 'AsposeImagingCloud/models/jpeg_properties'
require 'AsposeImagingCloud/models/object_exist'
require 'AsposeImagingCloud/models/odg_metadata'
require 'AsposeImagingCloud/models/odg_page'
require 'AsposeImagingCloud/models/odg_properties'
require 'AsposeImagingCloud/models/png_properties'
require 'AsposeImagingCloud/models/psd_properties'
require 'AsposeImagingCloud/models/search_context_status'
require 'AsposeImagingCloud/models/search_result'
require 'AsposeImagingCloud/models/search_results_set'
require 'AsposeImagingCloud/models/storage_exist'
require 'AsposeImagingCloud/models/storage_file'
require 'AsposeImagingCloud/models/tiff_frame'
require 'AsposeImagingCloud/models/tiff_options'
require 'AsposeImagingCloud/models/tiff_properties'
require 'AsposeImagingCloud/models/web_p_properties'
require 'AsposeImagingCloud/models/file_version'
require 'AsposeImagingCloud/models/jpeg_exif_data'

# APIs
require 'AsposeImagingCloud/api/imaging_api'

module AsposeImagingCloud
  class << self
    # Customize default settings for the SDK using block.
    #   AsposeImagingCloud.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
