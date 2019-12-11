# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_bmp_api.rb">
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
  class TestBmpApi < ImagingApiTester
    #  Class for testing BmpAPI

    def test_modify_bmp
      #  Test modify_bmp
      name = 'test.bmp'
      bits_per_pixel = 32
      horizontal_resolution = 300
      vertical_resolution = 300
      folder = @temp_folder
      storage = @test_storage
      from_scratch = nil

      request_invoker = lambda do
        return imaging_api.modify_bmp(AsposeImagingCloud::ModifyBmpRequest.new(name, bits_per_pixel, horizontal_resolution, vertical_resolution, from_scratch, folder, storage))
      end

      properties_tester = lambda do |original_properties, result_properties, _result_stream|
        assert_not_nil(result_properties.bmp_properties)
        assert_equal(bits_per_pixel, result_properties.bits_per_pixel)
        assert_equal(vertical_resolution, result_properties.vertical_resolution.to_f.ceil)
        assert_equal(horizontal_resolution, result_properties.horizontal_resolution.to_f.ceil)
        assert_not_nil(original_properties.bmp_properties)
        assert_equal(original_properties.bmp_properties.compression, result_properties.bmp_properties.compression)
        assert_equal(original_properties.width, result_properties.width)
        assert_equal(original_properties.height, result_properties.height)
      end

      get_request_tester('ModifyBmpTest', "Input image: #{name}; Bits per pixel: #{bits_per_pixel}; Horizontal resolution: #{horizontal_resolution}; Vertical resolution: #{vertical_resolution}", name, request_invoker, properties_tester, folder, storage)
    end

    # Test create_modified_bmp
    [true, false].each do |save_result_to_storage|
      define_method("test_create_modified_bmp_save_to_storage_#{save_result_to_storage}") do
        name = 'test.bmp'
        bits_per_pixel = 32
        horizontal_resolution = 300
        vertical_resolution = 300
        out_name = name + '_specific.bmp'
        folder = @temp_folder
        storage = @test_storage
        from_scratch = nil

        request_invoker = lambda do |input_stream, out_path|
          return imaging_api.create_modified_bmp(AsposeImagingCloud::CreateModifiedBmpRequest.new(input_stream, bits_per_pixel, horizontal_resolution, vertical_resolution, from_scratch, out_path, storage))
        end

        properties_tester = lambda do |original_properties, result_properties, _result_stream|
          assert_not_nil(result_properties.bmp_properties)
          assert_equal(bits_per_pixel, result_properties.bits_per_pixel)
          assert_equal(vertical_resolution, result_properties.vertical_resolution.to_f.ceil)
          assert_equal(horizontal_resolution, result_properties.horizontal_resolution.to_f.ceil)
          assert_not_nil(original_properties.bmp_properties)
          assert_equal(original_properties.bmp_properties.compression, result_properties.bmp_properties.compression)
          assert_equal(original_properties.width, result_properties.width)
          assert_equal(original_properties.height, result_properties.height)
        end

        post_request_tester('CreateModifiedBmpTest', save_result_to_storage, "Input image: #{name}; Bits per pixel: #{bits_per_pixel}; Horizontal resolution: #{horizontal_resolution}; Vertical resolution: #{vertical_resolution}", name, out_name, request_invoker, properties_tester, folder, storage)
      end
    end
  end
end
