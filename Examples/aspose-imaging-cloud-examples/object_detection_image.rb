# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="object_detection_image.rb">
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
  # Object detection image example
  class ObjectDetectionImage < ImagingBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Object detection image example:')
    end

    def get_sample_image_file_name
      'object_detection_example.jpg'
    end

    # Detect objects on an image from a cloud storage
    def detect_objects_image_from_storage
      puts('Detect objects on an image from a cloud storage')

      upload_sample_image_to_cloud

      method = "ssd"
      threshold = 50
      includeClass = true
      includeScore = true
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::ObjectBoundsRequest.new(
          get_sample_image_file_name, method, threshold, includeClass, includeScore, folder, storage)

      puts("Call ObjectBoundsRequest with params: method: #{method}, threshold: #{threshold}, includeClass: #{includeClass}, includeScore: #{includeScore}")

      detectedObjectsList = imaging_api.objectBounds(request)
      puts("Objects detected: #{detectedObjectsList.detectedObjects.len()}")
      #save_updated_sample_image_to_output(updated_image, false, "bmp")
      puts
    end

    # Get visualized detected objects and upload it to the cloud storage
    def visualize_detect_objects_image_from_storage
      puts('Get visualized detected objects and upload it to the cloud storage')

      upload_sample_image_to_cloud

      method = "ssd"
      threshold = 50
      includeClass = true
      includeScore = true
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::VisualObjectBoundsRequest.new(
          get_sample_image_file_name, method, threshold, includeClass, includeScore, folder, storage)

      puts("Call VisualObjectBoundsRequest with params: method: #{method}, threshold: #{threshold}, includeClass: #{includeClass}, includeScore: #{includeScore}")

      updated_image = imaging_api.visualObjectBounds(request)
      #puts("Objects detected: #{detectedObjectsList.detectedObjects.len()}")
      save_updated_sample_image_to_output(updated_image, false, "jpg")
      puts
    end

    # detected object on an image that is passed in a request stream
    def detect_objects_image_from_stream
      puts('detected object on an image that is passed in a request stream')

      method = "ssd"
      threshold = 50
      includeClass = true
      includeScore = true
      outPath = nil
      storage = nil # We are using default Cloud Storage
      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')

      request = AsposeImagingCloud::CreateObjectBoundsRequest.new(
          input_stream, method, threshold, includeClass, includeScore, outPath, storage)

      puts("Call CreateObjectBoundsRequest with params: method: #{method}, threshold: #{threshold}, includeClass: #{includeClass}, includeScore: #{includeScore}")

      detectedObjectsList = imaging_api.createObjectBounds(request)
      puts("Objects detected: #{detectedObjectsList.detectedObjects.len()}")
      #save_updated_sample_image_to_output(updated_image, false, "jpg")
      puts
    end

    # Visualize detected object on an image that is passed in a request stream
    def visual_detect_objects_image_from_stream
      puts('Visualize detected object on an image that is passed in a request stream')

      method = "ssd"
      threshold = 50
      includeClass = true
      includeScore = true
      outPath = nil
      storage = nil # We are using default Cloud Storage
      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')

      request = AsposeImagingCloud::CreateVisualObjectBoundsRequest.new(
          input_stream, method, threshold, includeClass, includeScore, outPath, storage)

      puts("Call CreateVisualObjectBoundsRequest with params: method: #{method}, threshold: #{threshold}, includeClass: #{includeClass}, includeScore: #{includeScore}")

      updated_image = imaging_api.createVisualObjectBounds(request)
      #puts("Objects detected: #{detectedObjectsList.detectedObjects.len()}")
      save_updated_sample_image_to_output(updated_image, false, "jpg")
      puts
    end









    # Deskew an existing image, and upload updated image to Cloud Storage
    def deskew_image_and_upload_to_storage
      puts('Deskews the image and upload to cloud storage')

      upload_sample_image_to_cloud

      resize_proportionally = true
      bg_color = "white"
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::DeskewImageRequest.new(
          get_sample_image_file_name, resize_proportionally, bg_color, folder, storage)

      puts("Call DeskewImage with params: resize_proprtionally: #{resize_proportionally}, bg_color: #{bg_color}")

      updated_image = @imaging_api.deskew_image(request)
      upload_image_to_cloud(get_modified_sample_image_file_name(false, "bmp"), updated_image)
      puts
    end

    # Deskew an image. Image data is passed in a request stream
    def create_deskewed_image_from_request_body
      puts('Deskews the image from request body')

      resize_proportionally = true
      bg_color = "white"
      storage = nil # We are using default Cloud Storage
      out_path = nil # Path to updated file (if this is empty, response contains streamed image)

      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')
      request = AsposeImagingCloud::CreateDeskewedImageRequest.new(
          input_stream, resize_proportionally, bg_color, out_path, storage)

      puts("Call CreateDeskewedImage with params: resize_proprtionally: #{resize_proportionally}, bg_color: #{bg_color}")

      updated_image = imaging_api.create_deskewed_image(request)
      save_updated_sample_image_to_output(updated_image, false, "bmp")
      puts
    end
  end
end
