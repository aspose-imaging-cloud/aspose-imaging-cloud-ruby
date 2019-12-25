# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_frames_post_api.rb">
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

require_relative './imaging_api_tester'

module AsposeImagingCloudTests
  class TestFramesPostApi < ImagingApiTester
    # Class for testing FramesAPI

    # Test post_image_frame
    [true, false].each do |save_result_to_storage|
      define_method("test_post_image_single_frame_save_to_storage_#{save_result_to_storage}") do
        name = 'test.tiff'
        frame_id = 2
        new_width = 300
        new_height = 450
        x = 10
        y = 10
        rect_width = 200
        rect_height = 300
        rotate_flip_method = 'Rotate90FlipX'
        save_other_frames = false
        folder = @temp_folder
        storage = @test_storage
        out_name = name + '_singleFrame.tiff'

        request_invoker = lambda do |input_stream, out_path|
          kwargs = { new_width: new_width, new_height: new_height, x: x, y: y, rect_width: rect_width, rect_height: rect_height, rotate_flip_method: rotate_flip_method, save_other_frames: save_other_frames, storage: storage }
          kwargs['out_path'] = out_path unless out_path.nil?
          return imaging_api.create_image_frame(AsposeImagingCloud::CreateImageFrameRequest.new(input_stream, frame_id, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, save_other_frames, out_path, storage))
        end

        properties_tester = lambda do |_original_properties, result_properties, result_stream|
          assert_not_nil(result_properties)
          assert_not_nil(result_properties.tiff_properties)
          assert_not_nil(result_properties.tiff_properties.frames)
          assert_equal(1, result_properties.tiff_properties.frames.size)
          assert_equal(rect_height, result_properties.tiff_properties.frames[0].width)
          assert_equal(rect_width, result_properties.tiff_properties.frames[0].height)
          assert_equal(result_properties.tiff_properties.frames[0].frame_options.image_width, rect_height)
          assert_equal(rect_width, result_properties.tiff_properties.frames[0].frame_options.image_length)
          assert_equal(rect_height, result_properties.width)
          assert_equal(rect_width, result_properties.height)
          if save_result_to_storage
            frame_properties = imaging_api.get_image_frame_properties(AsposeImagingCloud::GetImageFramePropertiesRequest.new(out_name, 0, folder, storage))
          else
            frame_properties = imaging_api.extract_image_frame_properties(AsposeImagingCloud::ExtractImageFramePropertiesRequest.new(result_stream, 0))
          end
          assert_not_nil(frame_properties)
          assert_not_nil(frame_properties.tiff_properties)
          assert_not_nil(frame_properties.tiff_properties.frames)
          assert_equal(rect_height, frame_properties.width)
          assert_equal(rect_width, frame_properties.height)
          assert_equal(frame_properties.tiff_properties.frames[0].width, frame_properties.width)
          assert_equal(frame_properties.tiff_properties.frames[0].height, frame_properties.height)
          assert_equal(frame_properties.tiff_properties.frames[0].frame_options.image_width, frame_properties.width)
          assert_equal(frame_properties.tiff_properties.frames[0].frame_options.image_length, frame_properties.height)
        end

        post_request_tester('GetImageSingleFrameTest', save_result_to_storage, "Input image: #{name}; Frame ID: #{frame_id}; New width: #{new_width}; New height: #{new_height}; Rotate/flip method: #{rotate_flip_method}; Save other frames: #{save_other_frames}; X: #{x}; Y: #{y}; Rect width: #{rect_width}; Rect height: #{rect_height}", name, out_name, request_invoker, properties_tester, folder, storage)
      end
    end

    # Test post_image_frame
    [true, false].each do |save_result_to_storage|
      define_method("test_post_image_all_frames_save_to_storage_#{save_result_to_storage}") do
        name = 'test.tiff'
        frame_id = 2
        new_width = 300
        new_height = 450
        x = 10
        y = 10
        rect_width = 200
        rect_height = 300
        rotate_flip_method = 'Rotate90FlipX'
        save_other_frames = true
        folder = @temp_folder
        storage = @test_storage
        out_name = name + '_allFrame.tiff'

        request_invoker = lambda do |input_stream, out_path|
          kwargs = { new_width: new_width, new_height: new_height, x: x, y: y, rect_width: rect_width, rect_height: rect_height, rotate_flip_method: rotate_flip_method, save_other_frames: save_other_frames, storage: storage }
          kwargs['out_path'] = out_path unless out_path.nil?
          return imaging_api.create_image_frame(AsposeImagingCloud::CreateImageFrameRequest.new(input_stream, frame_id, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, save_other_frames, out_path, storage))
        end

        properties_tester = lambda do |original_properties, result_properties, _result_stream|
          assert_not_nil(original_properties)
          assert_not_nil(original_properties.tiff_properties)
          assert_not_nil(original_properties.tiff_properties.frames)
          assert_not_nil(result_properties)
          assert_not_nil(result_properties.tiff_properties)
          assert_not_nil(result_properties.tiff_properties.frames)
          assert_equal(original_properties.tiff_properties.frames.size, result_properties.tiff_properties.frames.size)
          assert_equal(original_properties.width, result_properties.width)
          assert_equal(original_properties.height, result_properties.height)
          assert_equal(rect_height, result_properties.tiff_properties.frames[frame_id].width)
          assert_equal(rect_width, result_properties.tiff_properties.frames[frame_id].height)
          assert_equal(rect_height, result_properties.tiff_properties.frames[frame_id].frame_options.image_width)
          assert_equal(rect_width, result_properties.tiff_properties.frames[frame_id].frame_options.image_length)
        end

        post_request_tester('GetImageAllFramesTest', save_result_to_storage, "Input image: #{name}; Frame ID: #{frame_id}; New width: #{new_width}; New height: #{new_height}; Rotate/flip method: #{rotate_flip_method}; Save other frames: #{save_other_frames}; X: #{x}; Y: #{y}; Rect width: #{rect_width}; Rect height: #{rect_height}", name, out_name, request_invoker, properties_tester, folder, storage)
      end
    end
  end
end
