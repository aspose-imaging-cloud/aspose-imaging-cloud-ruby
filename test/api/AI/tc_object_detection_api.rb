#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_object_detection_api.rb">
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

require_relative './../imaging_api_tester'

module AsposeImagingCloudTests
  class TestObjectDetectionApi < ImagingApiTester
    #  Class for testing ObjectDetectionAPI

    define_method("available_labels") do
      begin
        puts('available_labels_test')
        response = imaging_api.get_available_labels(AsposeImagingCloud::GetAvailableLabelsRequest("ssd"));
        assert_not_nil(response)
        puts('test passed: true')
      rescue StandardError => e
        self.failed_any_test = true
        puts('test passed: false')
        puts(e.to_s)
        raise
      end
    end

    define_method("test_object_bounds") do
      folder = @temp_folder
      storage = @test_storage
      response_tester = lambda do |detected_object_list|
        assert_not_nil(detected_object_list)
        assert_true(detected_object_list.detected_objects.length() > 0)
        assert_not_nil(detected_object_list.detected_objects[0].label)
        assert_not_nil(detected_object_list.detected_objects[0].score)
      end

      basic_input_test_files.each do |input_file|
        next unless input_file.name.to_s.equal?("test.bmp")

        name = input_file.name

        request_invoker = lambda do
           return imaging_api.object_bounds(AsposeImagingCloud::GetObjectBoundsRequest.new(
               name, nil, 20, true, true, "dog", nil, folder, storage))
           end
          get_request_tester('objectDetection_objectbounds_test', "Input image: #{name};", name, request_invoker, response_tester, folder, storage)
        end
    end

    define_method("test_visual_object_bounds") do
      folder = @temp_folder
      storage = @test_storage
      response_tester = lambda do |image_stream|
        assert_not_nil(image_stream)
        assert_true(image_stream.length() > 0)
      end

      basic_input_test_files.each do |input_file|
        next unless input_file.name.to_s.equal?("test.bmp")

        name = input_file.name

        request_invoker = lambda do
          return imaging_api.visual_object_bounds(AsposeImagingCloud::GetVisualObjectBoundsRequest.new(
              name, nil, 20, true, true, "dog", nil, "red", folder, storage))
        end
        get_request_tester('objectDetection_visualobjectbounds_test', "Input image: #{name};", name, request_invoker, response_tester, folder, storage)
      end
    end

    # Test create_object_bounds
    [true, false].each do |save_result_to_storage|
      define_method("test_create_object_bounds_save_to_storage_#{save_result_to_storage}") do
        folder = @temp_folder
        storage = @test_storage

        response_tester = lambda do |detected_object_list|
          assert_not_nil(detected_object_list)
          assert_true(detected_object_list.detected_objects.length() > 0)
          assert_not_nil(detected_object_list.detected_objects[0].label)
          assert_not_nil(detected_object_list.detected_objects[0].score)
        end

        basic_input_test_files.each do |input_file|
          next unless input_file.name.to_s.equal?("test.bmp")

          name = input_file.name

          request_invoker = lambda do |input_stream, out_path|
            return imaging_api.create_object_bounds(AsposeImagingCloud::CreateObjectBoundsRequest.new(
                input_stream, nil, 20, true, true, "dog", nil, out_path, storage))
          end

            out_name = "result_test.bmp"
            post_object_detection_request_tester('objectDetection_createobjectbounds_test', save_result_to_storage, "Input image: #{name};", name, out_name, request_invoker, response_tester, folder, storage)
          end
        end
    end

    # Test create_visual_object_bounds
    [true, false].each do |save_result_to_storage|
      define_method("test_create_visual_object_bounds_save_to_storage_#{save_result_to_storage}") do
        folder = @temp_folder
        storage = @test_storage

        response_tester = lambda do |_result_stream|
          assert_not_nil(_result_stream)
          assert_true(_result_stream.length() > 0)
        end
        basic_input_test_files.each do |input_file|
          next unless input_file.name.to_s.equal?("test.bmp")

          name = input_file.name

          request_invoker = lambda do |input_stream, out_path|
            return imaging_api.create_visual_object_bounds(AsposeImagingCloud::CreateVisualObjectBoundsRequest.new(
                input_stream, nil, 20, true, true, "dog", nil, nil, out_path, storage))
          end

          out_name = "result_test.bmp"
          post_object_detection_request_tester('objectDetection_createvisualobjectbounds_test', save_result_to_storage, "Input image: #{name};", name, out_name, request_invoker, response_tester, folder, storage)
        end
      end
    end
  end
end
