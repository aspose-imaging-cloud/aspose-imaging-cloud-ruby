# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_svg_api.rb">
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
  class TestSvgApi < ImagingApiTester
    #  Class for testing SvgApi

    def test_modify_svg_size_rasterization
      #  Test modify_svg performing rasterization of image using page size parameters
      name = 'test.svg'
      bk_color = 'gray'
      page_width = 300
      page_height = 300
      border_x = 0
      border_y = 0
      format = 'png'
      folder = @temp_folder
      storage = @test_storage
      from_scratch = nil
      request_invoker = lambda do
        return imaging_api.modify_svg(AsposeImagingCloud::ModifySvgRequest.new(name, nil, nil, nil, nil, page_width, page_height, border_x, border_y, bk_color, from_scratch, folder, storage, format))
      end
      properties_tester = lambda do |_original_properties, result_properties, _result_stream|
        width = page_width + (border_x * 2)
        height = page_height + (border_y * 2)
        assert_not_nil(result_properties.png_properties)
        assert_equal(width, result_properties.width)
        assert_equal(height, result_properties.height)
      end
      get_request_tester('ModifySvgSizeRasterizationTest', "Input image: #{name}; BackColor: #{bk_color}; Page width: #{page_width}; Page height: #{page_height}; BorderX: #{border_x}; BorderY: #{border_y}", name, request_invoker, properties_tester, folder, storage)
    end

    def test_modify_svg_scale_rasterization
      #  Test modify_svg performing rasterization of image using page scale parameters
      name = 'test.svg'
      bk_color = 'gray'
      scale_x = 2
      scale_y = 2
      format = 'png'
      folder = @temp_folder
      storage = @test_storage
      from_scratch = nil
      request_invoker = lambda do
        return imaging_api.modify_svg(AsposeImagingCloud::ModifySvgRequest.new(name, nil, nil, scale_x, scale_y, nil, nil, nil, nil, bk_color, from_scratch, folder, storage, format))
      end
      properties_tester = lambda do |original_properties, result_properties, _result_stream|
        width = original_properties.width * scale_x
        height = original_properties.height * scale_y
        assert_not_nil(result_properties.png_properties)
        assert_equal(width, result_properties.width)
        assert_equal(height, result_properties.height)
      end
      get_request_tester('ModifySvgScaleRasterizationTest', "Input image: #{name}; BackColor: #{bk_color}; Scale X: #{scale_x}; Scale Y: #{scale_y}", name, request_invoker, properties_tester, folder, storage)
    end

    def test_modify_svg_update_properties
      #  Test modify_svg performing update of image properties
      name = 'test.svg'
      color_type = 'rgb'
      text_as_shapes = false
      format = 'svg'
      folder = @temp_folder
      storage = @test_storage
      from_scratch = nil
      request_invoker = lambda do
        return imaging_api.modify_svg(AsposeImagingCloud::ModifySvgRequest.new(name, color_type, text_as_shapes, nil, nil, nil, nil, nil, nil, nil, from_scratch, folder, storage, format))
      end
      properties_tester = lambda do |_original_properties, result_properties, _result_stream|
        assert_not_nil(result_properties.svg_properties)
        assert_equal(color_type, result_properties.svg_properties.color_type)
      end
      get_request_tester('ModifySvgUpdatePropertiesTest', "Input image: #{name}; Color type: #{color_type}; Text as shapes: #{text_as_shapes}", name, request_invoker, properties_tester, folder, storage)
    end

    def test_create_modified_svg_size_rasterization
      #  Test create_modified_svg performing rasterization of image using page size parameters
      [true, false].each do |save_result_to_storage|
        name = 'test.svg'
        bk_color = 'gray'
        page_width = 300
        page_height = 300
        border_x = 0
        border_y = 0
        format = 'png'
        out_name = name + '_specific.svg'
        folder = @temp_folder
        storage = @test_storage
        from_scratch = nil
        request_invoker = lambda do |input_stream, out_path|
          return imaging_api.create_modified_svg(AsposeImagingCloud::CreateModifiedSvgRequest.new(input_stream, nil, nil, nil, nil, page_width, page_height, border_x, border_y, bk_color, from_scratch, out_path, storage, format))
        end
        properties_tester = lambda do |_original_properties, result_properties, _result_stream|
          width = page_width + (border_x * 2)
          height = page_height + (border_y * 2)
          assert_not_nil(result_properties.png_properties)
          assert_equal(width, result_properties.width)
          assert_equal(height, result_properties.height)
        end
        post_request_tester('CreateModifiedSvgSizeRasterizationTest', save_result_to_storage, "Input image: #{name}; BackColor: #{bk_color}; Page width: #{page_width}; Page height: #{page_height}; BorderX: #{border_x}; BorderY: #{border_y}", name, out_name, request_invoker, properties_tester, folder, storage)
      end
    end

    def test_create_modified_svg_scale_rasterization
      #  Test create_modified_svg performing rasterization of image using page scale parameters
      [true, false].each do |save_result_to_storage|
        name = 'test.svg'
        bk_color = 'gray'
        scale_x = 2
        scale_y = 2
        format = 'png'
        out_name = name + '_specific.svg'
        folder = @temp_folder
        storage = @test_storage
        from_scratch = nil
        request_invoker = lambda do |input_stream, out_path|
          return imaging_api.create_modified_svg(AsposeImagingCloud::CreateModifiedSvgRequest.new(input_stream, nil, nil, scale_x, scale_y, nil, nil, nil, nil, bk_color, from_scratch, out_path, storage, format))
        end
        properties_tester = lambda do |original_properties, result_properties, _result_stream|
          width = original_properties.width * scale_x
          height = original_properties.height * scale_y
          assert_not_nil(result_properties.png_properties)
          assert_equal(width, result_properties.width)
          assert_equal(height, result_properties.height)
        end
        post_request_tester('CreateModifiedSvgScaleRasterizationTest', save_result_to_storage, "Input image: #{name}; BackColor: #{bk_color}; Scale X: #{scale_x}; Scale Y: #{scale_y}", name, out_name, request_invoker, properties_tester, folder, storage)
      end
    end

    def test_create_modified_svg_update_properties
      #  Test create_modified_svg performing update of image properties
      [true, false].each do |save_result_to_storage|
        name = 'test.svg'
        color_type = 'rgb'
        text_as_shapes = false
        format = 'svg'
        out_name = name + '_specific.svg'
        folder = @temp_folder
        storage = @test_storage
        from_scratch = nil
        request_invoker = lambda do |input_stream, out_path|
          return imaging_api.create_modified_svg(AsposeImagingCloud::CreateModifiedSvgRequest.new(input_stream, color_type, text_as_shapes, nil, nil, nil, nil, nil, nil, nil, from_scratch, out_path, storage, format))
        end
        properties_tester = lambda do |_original_properties, result_properties, _result_stream|
          assert_not_nil(result_properties.svg_properties)
          assert_equal(color_type, result_properties.svg_properties.color_type)
        end
        post_request_tester('CreateModifiedSvgTest', save_result_to_storage, "Input image: #{name}; Color type: #{color_type}; Text as shapes: #{text_as_shapes}", name, out_name, request_invoker, properties_tester, folder, storage)
      end
    end
  end
end