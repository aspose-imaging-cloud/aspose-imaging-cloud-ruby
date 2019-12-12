# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="aspose-imaging-cloud-examples.rb">
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
require_relative './imaging_base'
require_relative './crop_image'
require_relative './export_image'
require_relative './image_properties'
require_relative './resize_image'
require_relative './rotate_flip_image'
require_relative './tiff_frames'
require_relative './update_tiff_image'
require_relative './update_bmp_image'
require_relative './update_emf_image'
require_relative './update_gif_image'
require_relative './update_jpeg2000_image'
require_relative './update_image'
require_relative './update_jpeg_image'
require_relative './update_psd_image'
require_relative './update_web_p_image'
require_relative './update_wmf_image'
require_relative './AI/imaging_ai_base'
require_relative './AI/compare_images'
require_relative './AI/find_duplicate_images'
require_relative './AI/find_similar_images'

my_app_sid = 'c4822312-89f1-40a4-b82e-c4bfc5e80ac0' # Get AppSID from https://dashboard.aspose.cloud/
my_app_key = '2120637ce674560a6a7ba12f37ae80ce' # Get AppKey from https://dashboard.aspose.cloud/

api = AsposeImagingCloud::ImagingApi.new(my_app_key, my_app_sid)

if File.directory?(AsposeImagingCloudExamples::ImagingBase.output_folder)
  FileUtils.rm_r(AsposeImagingCloudExamples::ImagingBase.output_folder)
end

FileUtils.mkdir(AsposeImagingCloudExamples::ImagingBase.output_folder)

puts('Running Imaging Cloud examples:')
puts

# # Crop an existing image
# crop_image = AsposeImagingCloudExamples::CropImage.new(api)
# crop_image.crop_image_from_storage
# crop_image.crop_image_and_upload_to_storage
# crop_image.create_cropped_image_from_request_body
#
# # Export existing image to another format
# export_image = AsposeImagingCloudExamples::ExportImage.new(api)
# export_image.save_image_as_from_storage
# export_image.save_image_as_and_upload_to_storage
# export_image.create_saved_image_as_from_request_body
#
# # Get properties of an image
# image_properties = AsposeImagingCloudExamples::ImageProperties.new(api)
# image_properties.get_image_properties_from_storage
# image_properties.extract_image_properties_from_request_body
#
# # Resize an existing image
# resize_image = AsposeImagingCloudExamples::ResizeImage.new(api)
# resize_image.resize_image_from_storage
# resize_image.resize_image_and_upload_to_storage
# resize_image.create_resized_image_from_request_body
#
# # Rotate and/or flip an existing image
# rotate_flip_image = AsposeImagingCloudExamples::RotateFlipImage.new(api)
# rotate_flip_image.rotate_flip_image_from_storage
# rotate_flip_image.rotate_flip_image_and_upload_to_storage
# rotate_flip_image.create_rotate_flipped_image_from_request_body
#
# # TIFF Frames
# tiff_frames = AsposeImagingCloudExamples::TiffFrames.new(api)
# # Get a specified frame from existing TIFF image
# tiff_frames.get_image_frame_from_storage
# # Get a specified frame from existing TIFF image, and upload the frame to Cloud Storage
# tiff_frames.get_image_frame_and_upload_to_storage
# # Resize a TIFF frame
# tiff_frames.resize_image_frame_from_storage
# # Crop a TIFF frame
# tiff_frames.crop_image_frame_from_storage
# # RotateFlip a TIFF frame
# tiff_frames.rotate_flip_image_frame_from_storage
# # Get other frames from existing TIFF image
# tiff_frames.get_all_image_frames_from_storage
# # Get separate frame from existing TIFF image
# tiff_frames.create_image_frame_from_request_body
# # Get separate frame properties of existing TIFF image
# tiff_frames.get_image_frame_properties_from_storage
# # Get separate frame properties of existing TIFF image
# tiff_frames.extract_image_frame_properties_from_request_body

# # Update parameters of existing TIFF image
# tiff_image = AsposeImagingCloudExamples::UpdateTiffImage.new(api)
# tiff_image.modify_tiff_from_storage
# tiff_image.modify_tiff_and_upload_to_storage
# tiff_image.create_modified_tiff_from_request_body
# tiff_image.update_tiff_to_fax_from_storage
# tiff_image.append_tiff_from_storage
#
# # Update parameters of existing BMP image
# bmp_image = AsposeImagingCloudExamples::UpdateBmpImage.new(api)
# bmp_image.modify_bmp_from_storage
# bmp_image.modify_bmp_and_upload_to_storage
# bmp_image.create_modified_bmp_from_request_body
#
# # Process existing JPEG2000 imaging using given parameters
# jpeg2000_image = AsposeImagingCloudExamples::UpdateJpeg2000Image.new(api)
# jpeg2000_image.modify_jpeg2000_from_storage
# jpeg2000_image.modify_jpeg2000_and_upload_to_storage
# jpeg2000_image.create_modified_jpeg2000_from_request_body
#
# # Process existing EMF imaging using given parameters
# emf_image = AsposeImagingCloudExamples::UpdateEmfImage.new(api)
# emf_image.modify_emf_from_storage
# emf_image.modify_emf_and_upload_to_storage
# emf_image.create_modified_emf_from_request_body
#
# # Process existing GIF imaging using given parameters
# gif_image = AsposeImagingCloudExamples::UpdateGifImage.new(api)
# gif_image.modify_gif_from_storage
# gif_image.modify_gif_and_upload_to_storage
# gif_image.create_modified_gif_from_request_body
#
# # Perform scaling, cropping and flipping of an existing image in a single request
# update_image = AsposeImagingCloudExamples::UpdateImage.new(api)
# update_image.update_image_from_storage
# update_image.update_image_and_upload_to_storage
# update_image.create_updated_image_from_request_body
#
# # Process existing JPEG imaging using given parameters
# jpeg_image = AsposeImagingCloudExamples::UpdateJpegImage.new(api)
# jpeg_image.modify_jpeg_from_storage
# jpeg_image.modify_jpeg_and_upload_to_storage
# jpeg_image.create_modified_jpeg_from_request_body
#
# # Process existing PSD imaging using given parameters
# psd_image = AsposeImagingCloudExamples::UpdatePsdImage.new(api)
# psd_image.modify_psd_from_storage
# psd_image.modify_psd_and_upload_to_storage
# psd_image.create_modified_psd_from_request_body
#
# # Process existing WEBP imaging using given parameters
# web_p_image = AsposeImagingCloudExamples::UpdateWebPImage.new(api)
# web_p_image.modify_web_p_from_storage
# web_p_image.modify_web_p_and_upload_to_storage
# web_p_image.create_modified_web_p_from_request_body
#
# # Process existing WMF imaging using given parameters
# wmf_image = AsposeImagingCloudExamples::UpdateWmfImage.new(api)
# wmf_image.modify_wmf_from_storage
# wmf_image.modify_wmf_and_upload_to_storage
# wmf_image.create_modified_wmf_from_request_body

# AI APIs
puts('Running AI examples:')
puts

# Compare two images
compare_images = AsposeImagingCloudExamples::CompareImages.new(api)
compare_images.prepare_search_context
compare_images.compare_two_images_in_cloud
compare_images.compare_loaded_image_to_image_in_cloud
compare_images.delete_search_context

# Find Duplicate Images
find_duplicate_images = AsposeImagingCloudExamples::FindDuplicateImages.new(api)
find_duplicate_images.prepare_search_context
find_duplicate_images.find_image_duplicates
find_duplicate_images.delete_search_context

# Find Similar Images
find_similar_images = AsposeImagingCloudExamples::FindSimilarImages.new(api)
find_similar_images.prepare_search_context
find_similar_images.find_similar_images
find_similar_images.find_images_by_tag
find_similar_images.delete_search_context