# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_frames_get_api.rb">
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
  class TestFramesGetApi < ImagingApiTester
    #  Class for testing FramesApi
    #
    def test_get_image_single_frame
      #  Test get_image_frame
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

      request_invoker = lambda do
        return imaging_api.get_image_frame(AsposeImagingCloud::GetImageFrameRequest.new(name, frame_id, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, save_other_frames, folder, storage))
      end

      properties_tester = lambda do |_original_properties, result_properties, _result_stream|
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
      end

      get_request_tester('GetImageSingleFrameTest', "Input image: #{name}; Frame ID: #{frame_id}; New width: #{new_width}; New height: #{new_height}; Rotate/flip method: #{rotate_flip_method}; Save other frames: #{save_other_frames}; X: #{x}; Y: #{y}; Rect width: #{rect_width}; Rect height: #{rh}", name, request_invoker, properties_tester, folder, storage)
    end

    def test_get_image_all_frames
      #  Test get_image_frame
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

      request_invoker = lambda do
        return imaging_api.get_image_frame(AsposeImagingCloud::GetImageFrameRequest.new(name, frame_id, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, save_other_frames, folder, storage))
      end

      properties_tester = lambda do |original_properties, result_properties, _result_stream|
        assert_not_nil(original_properties)
        assert_not_nil(original_properties.tiff_properties)
        assert_not_nil(original_properties.tiff_properties.frames)
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

      get_request_tester('GetImageAllFramesTest', "Input image: #{name}; Frame ID: #{frame_id}; New width: #{new_width}; New height: #{new_height}; Rotate/flip method: #{rotate_flip_method}; Save other frames: #{save_other_frames}; X: #{x}; Y: #{y}; Rect width: #{rect_width}; Rect height: #{rect_height}", name, request_invoker, properties_tester, folder, storage)
    end
  end
end
