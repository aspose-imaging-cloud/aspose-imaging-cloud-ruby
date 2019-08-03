#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="AsposeImagingCloud.rb">
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


# Common files
require_relative './AsposeImagingCloud/api_client'
require_relative './AsposeImagingCloud/api_error'
require_relative './AsposeImagingCloud/version'
require_relative './AsposeImagingCloud/configuration'

# Models
require_relative './AsposeImagingCloud/models/bmp_properties'
require_relative './AsposeImagingCloud/models/dicom_properties'
require_relative './AsposeImagingCloud/models/disc_usage'
require_relative './AsposeImagingCloud/models/djvu_properties'
require_relative './AsposeImagingCloud/models/dng_properties'
require_relative './AsposeImagingCloud/models/error'
require_relative './AsposeImagingCloud/models/error_details'
require_relative './AsposeImagingCloud/models/exif_data'
require_relative './AsposeImagingCloud/models/file_versions'
require_relative './AsposeImagingCloud/models/files_list'
require_relative './AsposeImagingCloud/models/files_upload_result'
require_relative './AsposeImagingCloud/models/gif_properties'
require_relative './AsposeImagingCloud/models/image_duplicates'
require_relative './AsposeImagingCloud/models/image_duplicates_set'
require_relative './AsposeImagingCloud/models/image_features'
require_relative './AsposeImagingCloud/models/imaging_response'
require_relative './AsposeImagingCloud/models/jfif_data'
require_relative './AsposeImagingCloud/models/jpeg2000_properties'
require_relative './AsposeImagingCloud/models/jpeg_properties'
require_relative './AsposeImagingCloud/models/object_exist'
require_relative './AsposeImagingCloud/models/odg_metadata'
require_relative './AsposeImagingCloud/models/odg_page'
require_relative './AsposeImagingCloud/models/odg_properties'
require_relative './AsposeImagingCloud/models/png_properties'
require_relative './AsposeImagingCloud/models/psd_properties'
require_relative './AsposeImagingCloud/models/search_context_status'
require_relative './AsposeImagingCloud/models/search_result'
require_relative './AsposeImagingCloud/models/search_results_set'
require_relative './AsposeImagingCloud/models/storage_exist'
require_relative './AsposeImagingCloud/models/storage_file'
require_relative './AsposeImagingCloud/models/tiff_frame'
require_relative './AsposeImagingCloud/models/tiff_options'
require_relative './AsposeImagingCloud/models/tiff_properties'
require_relative './AsposeImagingCloud/models/web_p_properties'
require_relative './AsposeImagingCloud/models/file_version'
require_relative './AsposeImagingCloud/models/jpeg_exif_data'

# APIs
require_relative 'AsposeImagingCloud/api/imaging_api'

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

# Request models
require_relative './AsposeImagingCloud/models/requests/compare_images_request'
require_relative './AsposeImagingCloud/models/requests/imaging_request'
require_relative './AsposeImagingCloud/models/requests/create_image_frame_request'
require_relative './AsposeImagingCloud/models/requests/create_rotate_flipped_image_request'
require_relative './AsposeImagingCloud/models/requests/get_search_image_request'
require_relative './AsposeImagingCloud/models/requests/create_cropped_image_request'
require_relative './AsposeImagingCloud/models/requests/storage_exists_request'
require_relative './AsposeImagingCloud/models/requests/get_image_properties_request'
require_relative './AsposeImagingCloud/models/requests/get_image_frame_properties_request'
require_relative './AsposeImagingCloud/models/requests/create_modified_wmf_request'
require_relative './AsposeImagingCloud/models/requests/update_image_request'
require_relative './AsposeImagingCloud/models/requests/update_image_features_request'
require_relative './AsposeImagingCloud/models/requests/add_search_image_request'
require_relative './AsposeImagingCloud/models/requests/extract_image_properties_request'
require_relative './AsposeImagingCloud/models/requests/delete_image_features_request'
require_relative './AsposeImagingCloud/models/requests/copy_folder_request'
require_relative './AsposeImagingCloud/models/requests/extract_image_frame_properties_request'
require_relative './AsposeImagingCloud/models/requests/create_modified_jpeg_request'
require_relative './AsposeImagingCloud/models/requests/rotate_flip_image_request'
require_relative './AsposeImagingCloud/models/requests/move_folder_request'
require_relative './AsposeImagingCloud/models/requests/get_image_search_status_request'
require_relative './AsposeImagingCloud/models/requests/get_image_features_request'
require_relative './AsposeImagingCloud/models/requests/create_saved_image_as_request'
require_relative './AsposeImagingCloud/models/requests/http_request'
require_relative './AsposeImagingCloud/models/requests/create_updated_image_request'
require_relative './AsposeImagingCloud/models/requests/modify_web_p_request'
require_relative './AsposeImagingCloud/models/requests/modify_psd_request'
require_relative './AsposeImagingCloud/models/requests/create_modified_bmp_request'
require_relative './AsposeImagingCloud/models/requests/delete_image_search_request'
require_relative './AsposeImagingCloud/models/requests/convert_tiff_to_fax_request'
require_relative './AsposeImagingCloud/models/requests/resize_image_request'
require_relative './AsposeImagingCloud/models/requests/create_modified_jpeg2000_request'
require_relative './AsposeImagingCloud/models/requests/create_image_features_request'
require_relative './AsposeImagingCloud/models/requests/get_file_versions_request'
require_relative './AsposeImagingCloud/models/requests/find_image_duplicates_request'
require_relative './AsposeImagingCloud/models/requests/modify_emf_request'
require_relative './AsposeImagingCloud/models/requests/append_tiff_request'
require_relative './AsposeImagingCloud/models/requests/create_modified_emf_request'
require_relative './AsposeImagingCloud/models/requests/create_folder_request'
require_relative './AsposeImagingCloud/models/requests/modify_jpeg_request'
require_relative './AsposeImagingCloud/models/requests/save_image_as_request'
require_relative './AsposeImagingCloud/models/requests/find_similar_images_request'
require_relative './AsposeImagingCloud/models/requests/get_files_list_request'
require_relative './AsposeImagingCloud/models/requests/get_image_frame_request'
require_relative './AsposeImagingCloud/models/requests/upload_file_request'
require_relative './AsposeImagingCloud/models/requests/object_exists_request'
require_relative './AsposeImagingCloud/models/requests/create_resized_image_request'
require_relative './AsposeImagingCloud/models/requests/delete_search_image_request'
require_relative './AsposeImagingCloud/models/requests/delete_folder_request'
require_relative './AsposeImagingCloud/models/requests/extract_image_features_request'
require_relative './AsposeImagingCloud/models/requests/get_disc_usage_request'
require_relative './AsposeImagingCloud/models/requests/modify_gif_request'
require_relative './AsposeImagingCloud/models/requests/update_search_image_request'
require_relative './AsposeImagingCloud/models/requests/delete_file_request'
require_relative './AsposeImagingCloud/models/requests/create_modified_psd_request'
require_relative './AsposeImagingCloud/models/requests/crop_image_request'
require_relative './AsposeImagingCloud/models/requests/modify_jpeg2000_request'
require_relative './AsposeImagingCloud/models/requests/create_modified_tiff_request'
require_relative './AsposeImagingCloud/models/requests/move_file_request'
require_relative './AsposeImagingCloud/models/requests/modify_tiff_request'
require_relative './AsposeImagingCloud/models/requests/create_image_tag_request'
require_relative './AsposeImagingCloud/models/requests/create_modified_gif_request'
require_relative './AsposeImagingCloud/models/requests/find_images_by_tags_request'
require_relative './AsposeImagingCloud/models/requests/create_image_search_request'
require_relative './AsposeImagingCloud/models/requests/modify_wmf_request'
require_relative './AsposeImagingCloud/models/requests/download_file_request'
require_relative './AsposeImagingCloud/models/requests/create_modified_web_p_request'
require_relative './AsposeImagingCloud/models/requests/modify_bmp_request'
require_relative './AsposeImagingCloud/models/requests/copy_file_request'

