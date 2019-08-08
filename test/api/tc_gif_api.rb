# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_gif_api.rb">
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
  class TestGifApi < ImagingApiTester
    #  Class for testing GifAPI

    def test_modify_gif
      #  Test modify_gif
      name = 'test.gif'
      background_color_index = 5
      color_resolution = 4
      has_trailer = true
      interlaced = false
      is_palette_sorted = true
      pixel_aspect_ratio = 4
      folder = @temp_folder
      storage = @test_storage
      from_scratch = nil

      request_invoker = lambda do
        return imaging_api.modify_gif(AsposeImagingCloud::ModifyGifRequest.new(name, background_color_index, color_resolution, has_trailer, interlaced, is_palette_sorted, pixel_aspect_ratio, from_scratch, folder, storage))
      end

      properties_tester = lambda do |original_properties, result_properties, _result_stream|
        assert_not_nil(result_properties.gif_properties)
        assert_equal(pixel_aspect_ratio, result_properties.gif_properties.pixel_aspect_ratio)
        assert_not_nil(original_properties.gif_properties)
        assert_equal(original_properties.width, result_properties.width)
        assert_equal(original_properties.height, result_properties.height)
      end

      get_request_tester('ModifyGifTest', "Input image: #{name}; Back color index: #{background_color_index}; Color resolution: #{color_resolution}; Has trailer: #{has_trailer}; Interlaced: #{interlaced}; Is palette sorted: #{is_palette_sorted}; Pixel aspect ratio: #{pixel_aspect_ratio}", name, request_invoker, properties_tester, folder, storage)
    end

    #  Test create_modified_gif
    [true, false].each do |save_result_to_storage|
      define_method("test_create_modified_gif_save_to_storage_#{save_result_to_storage}") do
        name = 'test.gif'
        background_color_index = 5
        color_resolution = 4
        has_trailer = true
        interlaced = false
        is_palette_sorted = true
        pixel_aspect_ratio = 4
        out_name = name + '_specific.gif'
        folder = @temp_folder
        storage = @test_storage
        from_scratch = nil

        request_invoker = lambda do |input_stream, out_path|
          return imaging_api.create_modified_gif(AsposeImagingCloud::CreateModifiedGifRequest.new(input_stream, background_color_index, color_resolution, has_trailer, interlaced, is_palette_sorted, pixel_aspect_ratio, from_scratch, out_path, storage))
        end

        properties_tester = lambda do |original_properties, result_properties, _result_stream|
          assert_not_nil(result_properties.gif_properties)
          assert_equal(pixel_aspect_ratio, result_properties.gif_properties.pixel_aspect_ratio)
          assert_not_nil(original_properties.gif_properties)
          assert_equal(original_properties.width, result_properties.width)
          assert_equal(original_properties.height, result_properties.height)
        end

        post_request_tester('CreateModifiedGifTest', save_result_to_storage, "Input image: #{name}; Back color index: #{background_color_index}; Color resolution: #{color_resolution}; Has trailer: #{has_trailer}; Interlaced: #{interlaced}; Is palette sorted: #{is_palette_sorted}; Pixel aspect ratio: #{pixel_aspect_ratio}", name, out_name, request_invoker, properties_tester, folder, storage)
      end
    end
  end
end
