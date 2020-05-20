# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="multiframe_image.rb">
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
  # Multiframe example
  class MultiframeImage < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Multiframe example:')
    end

    def get_sample_image_file_name
      'MultipageSampleImage.djvu'
    end

    # Get separate frame from existing image
    def get_image_frame_from_storage
      puts('Get separate frame from existing image in cloud storage')

      upload_sample_image_to_cloud

      frame_id = 1 # Index of the frame
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetImageFrameRequest.new(
          get_sample_image_file_name, frame_id, nil, nil, nil, nil, nil, nil, nil, nil, folder, storage)

      puts("Call GetImageFrame with params: frame Id: #{frame_id}")

      updated_image = imaging_api.get_image_frame(request)
      save_updated_image_to_output('SingleFrame.djvu', updated_image)
      puts
    end

    # Get separate frame from existing image, and upload the frame to Cloud Storage
    def get_image_frame_and_upload_to_storage
      puts('Get separate frame from existing image and upload to cloud storage')

      upload_sample_image_to_cloud

      frame_id = 1 # Index of the frame
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetImageFrameRequest.new(
          get_sample_image_file_name, frame_id, nil, nil, nil, nil, nil, nil, nil, nil, folder, storage)

      puts("Call GetImageFrame with params: frame Id: #{frame_id}")

      updated_image = imaging_api.get_image_frame(request)
      upload_image_to_cloud('SingleFrame.djvu', updated_image)
      puts
    end

    # Get separate frame from existing image. Image data is passed in a request stream.
    def create_image_frame_from_request_body
      puts('Get separate frame from existing image from request body')

      frame_id = 1 # Index of the frame
      out_path = nil
      storage = nil # We are using default Cloud Storage

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::CreateImageFrameRequest.new(
          input_stream, frame_id, nil, nil, nil, nil, nil, nil, nil, nil, out_path, storage)

      puts("Call CreateImageFrame with params: frame Id: #{frame_id}")

      updated_image = imaging_api.create_image_frame(request)
      save_updated_image_to_output('SingleFrameFromRequest.djvu', updated_image)
      puts
    end

    # Get separate frame rabge from existing image
    def get_image_frame_range_from_storage
      puts('Get separate frame range from existing image in cloud storage')

      upload_sample_image_to_cloud

      start_frame_id = 1 # Index of the first frame in range
      end_frame_id = 4 # Index of the last frame in range
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetImageFrameRangeRequest.new(
          get_sample_image_file_name, start_frame_id, end_frame_id, nil, nil, nil, nil, nil, nil, nil, nil, folder, storage)

      puts("Call GetImageFrameRange with params: start frame Id: #{start_frame_id}; end frame id: #{end_frame_id}")

      image_frames = imaging_api.get_image_frame_range(request)
      save_updated_image_to_output('FrameRange.djvu', image_frames)
      puts
    end

    # Get separate frame range from existing image, and upload the frame to Cloud Storage
    def get_image_frame_range_and_upload_to_storage
      puts('Get separate frame range from existing image and upload to cloud storage')

      upload_sample_image_to_cloud

      start_frame_id = 1 # Index of the first frame in range
      end_frame_id = 4 # Index of the last frame in range
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetImageFrameRangeRequest.new(
          get_sample_image_file_name, start_frame_id, end_frame_id, nil, nil, nil, nil, nil, nil, nil, nil, folder, storage)

      puts("Call GetImageFrameRange with params: start frame Id: #{start_frame_id}; end frame id: #{end_frame_id}")

      image_frames = imaging_api.get_image_frame_range(request)
      upload_image_to_cloud('FrameRange.djvu', image_frames)
      puts
    end

    # Get separate frame range from existing image. Image data is passed in a request stream.
    def create_image_frame_range_from_request_body
      puts('Get separate frame range from existing image from request body')

      start_frame_id = 1 # Index of the first frame in range
      end_frame_id = 4 # Index of the last frame in range
      out_path = nil
      storage = nil # We are using default Cloud Storage

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::CreateImageFrameRangeRequest.new(
          input_stream, start_frame_id, end_frame_id, nil, nil, nil, nil, nil, nil, nil, nil, out_path, storage)

      puts("Call CreateImageFrameRange with params: start frame Id: #{start_frame_id}; end frame id: #{end_frame_id}")

      updated_image = imaging_api.create_image_frame(request)
      save_updated_image_to_output('FrameRangeFromRequest.djvu', updated_image)
      puts
    end

    # Get separate frame properties of a image
    def get_image_frame_properties_from_storage
      puts('Gets separate frame properties of existing image from cloud storage')

      upload_sample_image_to_cloud

      frame_id = 1 # Number of a frame
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetImageFramePropertiesRequest.new(
          get_sample_image_file_name, frame_id, folder, storage)

      puts("Call GetImageFrameProperties with params: frame Id: #{frame_id}")

      response = imaging_api.get_image_frame_properties(request)
      output_properties_to_file('TiffFrameProperties.tiff', response)
      puts
    end

    # Get separate frame properties of a image. Image data is passed in a request stream.
    def extract_image_frame_properties_from_request_body
      puts('Get separate frame properties of existing image from request body')

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