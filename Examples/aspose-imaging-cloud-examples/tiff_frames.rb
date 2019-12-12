# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tiff_frames.rb">
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
  # TIFF frames example
  class TiffFrames < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('TIFF frames example:')
    end

    def get_sample_image_file_name
      'TiffFrameSampleImage.tiff'
    end

    # Get separate frame from existing TIFF image
    def get_image_frame_from_storage
      puts('Get separate frame from existing TIFF image in cloud storage')

      upload_sample_image_to_cloud

      frame_id = 1 # Number of a frame
      new_width = 300
      new_height = 450
      x = 10
      y = 10
      rect_width = 200
      rect_height = 300
      rotate_flip_method = 'Rotate90FlipX'
      save_other_frames = false # Result will include just the specified frame
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetImageFrameRequest.new(get_sample_image_file_name, frame_id, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, save_other_frames, folder, storage)

      puts("Call GetImageFrame with params: frame Id: #{frame_id}, new width: #{new_width}, new height: #{new_height}, x: #{x}, y: #{y}, rect width: #{rect_width}, rect height: #{rect_height}, rotate/flip method: #{rotate_flip_method}, save other frames: #{save_other_frames}")

      updated_image = imaging_api.get_image_frame(request)
      save_updated_image_to_output('SingleFrame.tiff', updated_image)
      puts
    end

    # Get separate frame from existing TIFF image, and upload the frame to Cloud Storage
    def get_image_frame_and_upload_to_storage
      puts('Get separate frame from existing TIFF image and upload to cloud storage')

      upload_sample_image_to_cloud

      frame_id = 1 # Number of a frame
      new_width = 300
      new_height = 450
      x = 10
      y = 10
      rect_width = 200
      rect_height = 300
      rotate_flip_method = 'Rotate90FlipX'
      save_other_frames = false # Result will include just the specified frame
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetImageFrameRequest.new(get_sample_image_file_name, frame_id, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, save_other_frames, folder, storage)

      puts("Call GetImageFrame with params: frame Id: #{frame_id}, new width: #{new_width}, new height: #{new_height}, x: #{x}, y: #{y}, rect width: #{rect_width}, rect height: #{rect_height}, rotate/flip method: #{rotate_flip_method}, save other frames: #{save_other_frames}")

      updated_image = imaging_api.get_image_frame(request)
      upload_image_to_cloud('SingleFrame.tiff', updated_image)
      puts
    end

    # Resize a TIFF frame
    def resize_image_frame_from_storage
      puts('Get separate frame from existing TIFF image and upload to cloud storage')

      upload_sample_image_to_cloud

      frame_id = 1 # Number of a frame
      new_width = 300
      new_height = 300
      save_other_frames = false # Result will include just the specified frame
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetImageFrameRequest.new(get_sample_image_file_name, frame_id, new_width, new_height, nil, nil, nil, nil, nil, save_other_frames, folder, storage)

      puts("Call GetImageFrame with params: frame Id: #{frame_id}, new width: #{new_width}, new height: #{new_height}, save other frames: #{save_other_frames}")

      updated_image = imaging_api.get_image_frame(request)
      save_updated_image_to_output('CropFrame.tiff', updated_image)
      puts
    end

    # Crop a TIFF frame
    def crop_image_frame_from_storage
      puts('Crop frame from existing TIFF image from cloud storage')

      upload_sample_image_to_cloud

      frame_id = 1 # Number of a frame
      x = 10
      y = 10
      rect_width = 200
      rect_height = 300
      save_other_frames = false # Result will include just the specified frame
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetImageFrameRequest.new(get_sample_image_file_name, frame_id, nil, nil, x, y, rect_width, rect_height, nil, save_other_frames, folder, storage)

      puts("Call GetImageFrame with params: frame Id: #{frame_id}, x: #{x}, y: #{y}, rect width: #{rect_width}, rect height: #{rect_height}, save other frames: #{save_other_frames}")

      updated_image = imaging_api.get_image_frame(request)
      save_updated_image_to_output('CropFrame.tiff', updated_image)
      puts
    end

    # Rotate/Flip a TIFF frame
    def rotate_flip_image_frame_from_storage
      puts('Rotate/flip frame from existing TIFF image from cloud storage')

      upload_sample_image_to_cloud

      frame_id = 0 # Number of a frame
      rotate_flip_method = 'Rotate90FlipX'
      save_other_frames = false # Result will include just the specified frame
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetImageFrameRequest.new(get_sample_image_file_name, frame_id, nil, nil, nil, nil, nil, nil, rotate_flip_method, save_other_frames, folder, storage)

      puts("Call GetImageFrame with params: frame Id: #{frame_id}, rotate/flip method: #{rotate_flip_method}, save other frames: #{save_other_frames}")

      updated_image = imaging_api.get_image_frame(request)
      save_updated_image_to_output('RotateFlipFrame.tiff', updated_image)
      puts
    end

    # Gets all image frames from storage
    def get_all_image_frames_from_storage
      puts('Gets all image frames from existing TIFF image from cloud storage')

      upload_sample_image_to_cloud

      frame_id = 1 # Number of a frame
      new_width = 300
      new_height = 450
      x = 10
      y = 10
      rect_width = 200
      rect_height = 300
      rotate_flip_method = 'Rotate90FlipX'
      save_other_frames = true # Result will include just the specified frame
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetImageFrameRequest.new(get_sample_image_file_name, frame_id, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, save_other_frames, folder, storage)

      puts("Call GetImageFrame with params: frame Id: #{frame_id}, new width: #{new_width}, new height: #{new_height}, x: #{x}, y: #{y}, rect width: #{rect_width}, rect height: #{rect_height}, rotate/flip method: #{rotate_flip_method}, save other frames: #{save_other_frames}")

      updated_image = imaging_api.get_image_frame(request)
      save_updated_image_to_output('OtherFrames.tiff', updated_image)
      puts
    end

    # Get separate frame from existing TIFF image. Image data is passed in a request stream.
    def create_image_frame_from_request_body
      puts('Get separate frame from existing TIFF image in cloud storage')

      upload_sample_image_to_cloud

      frame_id = 1 # Number of a frame
      new_width = 300
      new_height = 450
      x = 10
      y = 10
      rect_width = 200
      rect_height = 300
      rotate_flip_method = 'Rotate90FlipX'
      save_other_frames = false # Result will include just the specified frame
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::CreateImageFrameRequest.new(input_stream, frame_id, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, save_other_frames, folder, storage)

      puts("Call CreateImageFrame with params: frame Id: #{frame_id}, new width: #{new_width}, new height: #{new_height}, x: #{x}, y: #{y}, rect width: #{rect_width}, rect height: #{rect_height}, rotate/flip method: #{rotate_flip_method}, save other frames: #{save_other_frames}")

      updated_image = imaging_api.create_image_frame(request)
      save_updated_image_to_output('SingleFrameFromRequest.tiff', updated_image)
      puts
    end

    # Get separate frame properties of a TIFF image
    def get_image_frame_properties_from_storage
      puts('Gets separate frame properties of existing TIFF image from cloud storage')

      upload_sample_image_to_cloud

      frame_id = 1 # Number of a frame
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetImageFramePropertiesRequest.new(get_sample_image_file_name, frame_id, folder, storage)

      puts("Call GetImageFrameProperties with params: frame Id: #{frame_id}")

      response = imaging_api.get_image_frame_properties(request)
      output_properties_to_file('TiffFrameProperties.tiff', response)
      puts
    end

    # Get separate frame properties of a TIFF image. Image data is passed in a request stream.
    def extract_image_frame_properties_from_request_body
      puts('Get separate frame properties of existing TIFF image from request body')

      frame_id = 1 # Number of a frame

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::ExtractImageFramePropertiesRequest.new(input_stream, frame_id)

      puts("Call ExtractImageFrameProperties with params: frame Id: #{frame_id}")

      response = imaging_api.extract_image_frame_properties(request)
      output_properties_to_file('TiffFramePropertiesFromRequest.tiff', response)
      puts
    end
  end
end