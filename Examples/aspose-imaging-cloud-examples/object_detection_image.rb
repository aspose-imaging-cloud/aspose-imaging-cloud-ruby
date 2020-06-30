
# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="object_detection_image.rb">
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
      includeLabel = true
      includeScore = true
      allowedLabels = "cat"
      blockedLabels = "dog"
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetObjectBoundsRequest.new(
          get_sample_image_file_name, method, threshold, includeLabel, includeScore, allowedLabels, blockedLabels, folder, storage)

      puts("Call ObjectBoundsRequest with params: method: #{method}, threshold: #{threshold}, includeLabel: #{includeLabel}, includeScore: #{includeScore}")

      detectedObjectsList = imaging_api.get_object_bounds(request)
      puts("Objects detected: #{detectedObjectsList.detected_objects.length}")
      puts
    end

    # Get visualized detected objects and upload it to the cloud storage
    def visualize_detect_objects_image_from_storage
      puts('Get visualized detected objects and upload it to the cloud storage')

      upload_sample_image_to_cloud

      method = "ssd"
      threshold = 50
      includeLabel = true
      includeScore = true
      color = "blue"
      allowedLabels = "cat"
      blockedLabels = "dog"
      folder = ImagingBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      request = AsposeImagingCloud::GetVisualObjectBoundsRequest.new(
          get_sample_image_file_name, method, threshold, includeLabel, includeScore, allowedLabels, blockedLabels, color, folder, storage)

      puts("Call VisualObjectBoundsRequest with params: method: #{method}, threshold: #{threshold}, includeLabel: #{includeLabel}, includeScore: #{includeScore}, color: #{color}")

      result_image = imaging_api.get_visual_object_bounds(request)
      save_updated_sample_image_to_output(result_image, false, "jpg")
      puts
    end

    # detected object on an image that is passed in a request stream
    def detect_objects_image_from_stream
      puts('detected object on an image that is passed in a request stream')

      method = "ssd"
      threshold = 50
      includeLabel = true
      includeScore = true
      allowedLabels = "cat"
      blockedLabels = "dog"
      outPath = nil
      storage = nil # We are using default Cloud Storage
      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')

      request = AsposeImagingCloud::CreateObjectBoundsRequest.new(
          input_stream, method, threshold, includeLabel, includeScore, outPath, storage)

      puts("Call CreateObjectBoundsRequest with params: method: #{method}, threshold: #{threshold}, includeLabel: #{includeLabel}, includeScore: #{includeScore}")

      detectedObjectsList = imaging_api.create_object_bounds(request)
      puts("Objects detected: #{detectedObjectsList.detected_objects.length}")
      puts
    end

    # Visualize detected object on an image that is passed in a request stream
    def visual_detect_objects_image_from_stream
      puts('Visualize detected object on an image that is passed in a request stream')

      method = "ssd"
      threshold = 50
      includeLabel = true
      includeScore = true
      allowedLabels = "cat"
      blockedLabels = "dog"
      color = nil
      outPath = nil
      storage = nil # We are using default Cloud Storage
      input_stream = File.open(File.join(ImagingBase::EXAMPLE_IMAGES_FOLDER, get_sample_image_file_name), 'r')

      request = AsposeImagingCloud::CreateVisualObjectBoundsRequest.new(
          input_stream, method, threshold, includeLabel, includeScore, allowedLabels, blockedLabels, color, outPath, storage)

      puts("Call CreateVisualObjectBoundsRequest with params: method: #{method}, threshold: #{threshold}, includeLabel: #{includeLabel}, includeScore: #{includeScore}; color: #{color}")

      updated_image = imaging_api.create_visual_object_bounds(request)
      save_updated_sample_image_to_output(updated_image, false, "jpg")
      puts
    end
  end
end
