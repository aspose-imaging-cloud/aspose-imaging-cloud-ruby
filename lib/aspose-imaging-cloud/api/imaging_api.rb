#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="imaging_api.rb">
#    Copyright (c) 2018-2020 Aspose Pty Ltd. All rights reserved.
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


require 'uri'

module AsposeImagingCloud
  # Aspose.Imaging Cloud API
  class ImagingApi
    attr_accessor :api_client

    # Initializes a new instance of the ImagingApi class.
    # @param [String] client_secret Key to access the server.
    # @param [String] client_id ID to access the server.
    # @param [String] base_url Server URL.
    # @param [String] api_version Api version.
    # @param [Object] debug Debug switch [true, false].
    def initialize(client_secret = nil, client_id = nil, base_url = 'api-qa.aspose.cloud', api_version = 'v3.0', debug = false)
      @api_client = ApiClient.new(client_secret, client_id, base_url, api_version, debug)
    end

    # Add image and images features to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [add_search_imageRequest] request Request object.
    # @return [nil]
    def add_search_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, nil)
      nil
    end

    # Appends existing TIFF image to another existing TIFF image (i.e. merges TIFF images).
    # @param [append_tiffRequest] request Request object.
    # @return [nil]
    def append_tiff(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, nil)
      nil
    end

    # Compare two images. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [compare_imagesRequest] request Request object.
    # @return [SearchResultsSet]
    def compare_images(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'SearchResultsSet')
    end

    # Convert existing image to another format.
    # @param [convert_imageRequest] request Request object.
    # @return [File]
    def convert_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Update parameters of existing TIFF image accordingly to fax parameters.
    # @param [convert_tiff_to_faxRequest] request Request object.
    # @return [File]
    def convert_tiff_to_fax(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Copy file
    # @param [copy_fileRequest] request Request object.
    # @return [nil]
    def copy_file(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Copy folder
    # @param [copy_folderRequest] request Request object.
    # @return [nil]
    def copy_folder(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Convert existing image to another format. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_converted_imageRequest] request Request object.
    # @return [File]
    def create_converted_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Crop an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_cropped_imageRequest] request Request object.
    # @return [File]
    def create_cropped_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Deskew an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_deskewed_imageRequest] request Request object.
    # @return [File]
    def create_deskewed_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Update parameters of TIFF image accordingly to fax parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_fax_tiffRequest] request Request object.
    # @return [File]
    def create_fax_tiff(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Create the folder
    # @param [create_folderRequest] request Request object.
    # @return [nil]
    def create_folder(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Grayscales an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_grayscaled_imageRequest] request Request object.
    # @return [File]
    def create_grayscaled_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Extract images features and add them to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_image_featuresRequest] request Request object.
    # @return [nil]
    def create_image_features(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, nil)
      nil
    end

    # Get separate frame from existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_image_frameRequest] request Request object.
    # @return [File]
    def create_image_frame(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Get frames range from existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_image_frame_rangeRequest] request Request object.
    # @return [File]
    def create_image_frame_range(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Create new search context.
    # @param [create_image_searchRequest] request Request object.
    # @return [SearchContextStatus]
    def create_image_search(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'SearchContextStatus')
    end

    # Add tag and reference image to search context. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_image_tagRequest] request Request object.
    # @return [nil]
    def create_image_tag(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, nil)
      nil
    end

    # Update parameters of BMP image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_modified_bmpRequest] request Request object.
    # @return [File]
    def create_modified_bmp(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Process existing EMF imaging using given parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_modified_emfRequest] request Request object.
    # @return [File]
    def create_modified_emf(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Update parameters of GIF image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_modified_gifRequest] request Request object.
    # @return [File]
    def create_modified_gif(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Update parameters of JPEG image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_modified_jpegRequest] request Request object.
    # @return [File]
    def create_modified_jpeg(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Update parameters of JPEG2000 image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_modified_jpeg2000Request] request Request object.
    # @return [File]
    def create_modified_jpeg2000(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Update parameters of PSD image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_modified_psdRequest] request Request object.
    # @return [File]
    def create_modified_psd(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Update parameters of SVG image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_modified_svgRequest] request Request object.
    # @return [File]
    def create_modified_svg(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Update parameters of TIFF image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_modified_tiffRequest] request Request object.
    # @return [File]
    def create_modified_tiff(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Update parameters of WEBP image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_modified_web_pRequest] request Request object.
    # @return [File]
    def create_modified_web_p(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Process existing WMF image using given parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_modified_wmfRequest] request Request object.
    # @return [File]
    def create_modified_wmf(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Detects objects bounds. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_object_boundsRequest] request Request object.
    # @return [DetectedObjectList]
    def create_object_bounds(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'DetectedObjectList')
    end

    # Resize an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_resized_imageRequest] request Request object.
    # @return [File]
    def create_resized_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Rotate and/or flip an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_rotate_flipped_imageRequest] request Request object.
    # @return [File]
    def create_rotate_flipped_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Perform scaling, cropping and flipping of an image in a single request. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [create_updated_imageRequest] request Request object.
    # @return [File]
    def create_updated_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Detects objects bounds and draw them on the original image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream
    # @param [create_visual_object_boundsRequest] request Request object.
    # @return [File]
    def create_visual_object_bounds(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'File')
    end

    # Extract images features from web page and add them to search context
    # @param [create_web_site_image_featuresRequest] request Request object.
    # @return [nil]
    def create_web_site_image_features(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, nil)
      nil
    end

    # Crop an existing image.
    # @param [crop_imageRequest] request Request object.
    # @return [File]
    def crop_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Delete file
    # @param [delete_fileRequest] request Request object.
    # @return [nil]
    def delete_file(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Delete folder
    # @param [delete_folderRequest] request Request object.
    # @return [nil]
    def delete_folder(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Deletes image features from search context.
    # @param [delete_image_featuresRequest] request Request object.
    # @return [nil]
    def delete_image_features(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Deletes the search context.
    # @param [delete_image_searchRequest] request Request object.
    # @return [nil]
    def delete_image_search(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Delete image and images features from search context
    # @param [delete_search_imageRequest] request Request object.
    # @return [nil]
    def delete_search_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :DELETE, nil)
      nil
    end

    # Deskew an existing image.
    # @param [deskew_imageRequest] request Request object.
    # @return [File]
    def deskew_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Download file
    # @param [download_fileRequest] request Request object.
    # @return [File]
    def download_file(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Extract features from image without adding to search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [extract_image_featuresRequest] request Request object.
    # @return [ImageFeatures]
    def extract_image_features(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'ImageFeatures')
    end

    # Get separate frame properties of existing image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [extract_image_frame_propertiesRequest] request Request object.
    # @return [ImagingResponse]
    def extract_image_frame_properties(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'ImagingResponse')
    end

    # Get properties of an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [extract_image_propertiesRequest] request Request object.
    # @return [ImagingResponse]
    def extract_image_properties(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'ImagingResponse')
    end

    # Apply filtering effects to an existing image.
    # @param [filter_effect_imageRequest] request Request object.
    # @return [File]
    def filter_effect_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :PUT, 'File')
    end

    # Find images duplicates.
    # @param [find_image_duplicatesRequest] request Request object.
    # @return [ImageDuplicatesSet]
    def find_image_duplicates(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'ImageDuplicatesSet')
    end

    # Find images by tags. Tags JSON string is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [find_images_by_tagsRequest] request Request object.
    # @return [SearchResultsSet]
    def find_images_by_tags(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :POST, 'SearchResultsSet')
    end

    # Find similar images. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [find_similar_imagesRequest] request Request object.
    # @return [SearchResultsSet]
    def find_similar_images(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'SearchResultsSet')
    end

    # Gets available labels for selected object detection method.
    # @param [get_available_labelsRequest] request Request object.
    # @return [AvailableLabelsList]
    def get_available_labels(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'AvailableLabelsList')
    end

    # Get disc usage
    # @param [get_disc_usageRequest] request Request object.
    # @return [DiscUsage]
    def get_disc_usage(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'DiscUsage')
    end

    # Get file versions
    # @param [get_file_versionsRequest] request Request object.
    # @return [FileVersions]
    def get_file_versions(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'FileVersions')
    end

    # Get all files and folders within a folder
    # @param [get_files_listRequest] request Request object.
    # @return [FilesList]
    def get_files_list(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'FilesList')
    end

    # Gets image features from search context.
    # @param [get_image_featuresRequest] request Request object.
    # @return [ImageFeatures]
    def get_image_features(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'ImageFeatures')
    end

    # Get separate frame from existing image.
    # @param [get_image_frameRequest] request Request object.
    # @return [File]
    def get_image_frame(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Get separate frame properties of existing image.
    # @param [get_image_frame_propertiesRequest] request Request object.
    # @return [ImagingResponse]
    def get_image_frame_properties(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'ImagingResponse')
    end

    # Get frames range from existing image.
    # @param [get_image_frame_rangeRequest] request Request object.
    # @return [File]
    def get_image_frame_range(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Get properties of an image.
    # @param [get_image_propertiesRequest] request Request object.
    # @return [ImagingResponse]
    def get_image_properties(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'ImagingResponse')
    end

    # Gets the search context status.
    # @param [get_image_search_statusRequest] request Request object.
    # @return [SearchContextStatus]
    def get_image_search_status(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'SearchContextStatus')
    end

    # Detects objects' bounds
    # @param [get_object_boundsRequest] request Request object.
    # @return [DetectedObjectList]
    def get_object_bounds(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'DetectedObjectList')
    end

    # Get image from search context
    # @param [get_search_imageRequest] request Request object.
    # @return [File]
    def get_search_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Detects objects bounds and draw them on the original image
    # @param [get_visual_object_boundsRequest] request Request object.
    # @return [File]
    def get_visual_object_bounds(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Grayscale an existing image.
    # @param [grayscale_imageRequest] request Request object.
    # @return [File]
    def grayscale_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Update parameters of existing BMP image.
    # @param [modify_bmpRequest] request Request object.
    # @return [File]
    def modify_bmp(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Process existing EMF imaging using given parameters.
    # @param [modify_emfRequest] request Request object.
    # @return [File]
    def modify_emf(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Update parameters of existing GIF image.
    # @param [modify_gifRequest] request Request object.
    # @return [File]
    def modify_gif(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Update parameters of existing JPEG image.
    # @param [modify_jpegRequest] request Request object.
    # @return [File]
    def modify_jpeg(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Update parameters of existing JPEG2000 image.
    # @param [modify_jpeg2000Request] request Request object.
    # @return [File]
    def modify_jpeg2000(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Update parameters of existing PSD image.
    # @param [modify_psdRequest] request Request object.
    # @return [File]
    def modify_psd(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Update parameters of existing SVG image.
    # @param [modify_svgRequest] request Request object.
    # @return [File]
    def modify_svg(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Update parameters of existing TIFF image.
    # @param [modify_tiffRequest] request Request object.
    # @return [File]
    def modify_tiff(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Update parameters of existing WEBP image.
    # @param [modify_web_pRequest] request Request object.
    # @return [File]
    def modify_web_p(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Process existing WMF image using given parameters.
    # @param [modify_wmfRequest] request Request object.
    # @return [File]
    def modify_wmf(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Move file
    # @param [move_fileRequest] request Request object.
    # @return [nil]
    def move_file(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Move folder
    # @param [move_folderRequest] request Request object.
    # @return [nil]
    def move_folder(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Check if file or folder exists
    # @param [object_existsRequest] request Request object.
    # @return [ObjectExist]
    def object_exists(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'ObjectExist')
    end

    # Resize an existing image.
    # @param [resize_imageRequest] request Request object.
    # @return [File]
    def resize_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Rotate and/or flip an existing image.
    # @param [rotate_flip_imageRequest] request Request object.
    # @return [File]
    def rotate_flip_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Check if storage exists
    # @param [storage_existsRequest] request Request object.
    # @return [StorageExist]
    def storage_exists(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'StorageExist')
    end

    # Perform scaling, cropping and flipping of an existing image in a single request.
    # @param [update_imageRequest] request Request object.
    # @return [File]
    def update_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :GET, 'File')
    end

    # Update images features in search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [update_image_featuresRequest] request Request object.
    # @return [nil]
    def update_image_features(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Update image and images features in search context. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [update_search_imageRequest] request Request object.
    # @return [nil]
    def update_search_image(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :PUT, nil)
      nil
    end

    # Upload file
    # @param [upload_fileRequest] request Request object.
    # @return [FilesUploadResult]
    def upload_file(request)
      http_request = request.to_http_info(@api_client.config)
      make_request(http_request, :PUT, 'FilesUploadResult')
    end

    private

    def make_request(http_request, method, return_type)
      call_api(http_request, method, return_type)
    rescue ApiError => e
      if e.code.equal? 401
        request_token
        return call_api(http_request, method, return_type)
      end
      raise

    end

    def call_api(http_request, method, return_type)
      response = @api_client.call_api(method,
                                      http_request.resource_path,
                                      header_params: http_request.header_params,
                                      query_params: http_request.query_params,
                                      form_params: http_request.form_params,
                                      body: http_request.body,
                                      auth_names: http_request.auth_names,
                                      return_type: return_type)
      response[0]
    end

    def request_token
      config = @api_client.config
      request_url = '/connect/token'
      form_params =
        {
          'grant_type': 'client_credentials',
          'client_id': config.api_key[:client_id],
          'client_secret': config.api_key[:api_key]
        }

      header_params =
        {
          'Accept' => 'application/json',
          'Content-Type' =>'application/x-www-form-urlencoded'
        }

      base_path = @api_client.config.base_path
      @api_client.config.base_path = ''

      data = @api_client.call_api(:POST, request_url,
                                  header_params: header_params,
                                  form_params: form_params,
                                  return_type: 'Object')
      access_token = data[0]['access_token'.to_sym]

      @api_client.config.base_path = base_path
      @api_client.config.access_token = access_token
    end
  end
end

