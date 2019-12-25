# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_wmf_api.rb">
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
  class TestWmfApi < ImagingApiTester
    #  Class for testing WmfApi

    def test_modify_wmf
      #  Test modify_wmf
      name = 'test.wmf'
      bk_color = 'gray'
      page_width = 300
      page_height = 300
      border_x = 50
      border_y = 50
      folder = @temp_folder
      storage = @test_storage
      from_scratch = nil

      request_invoker = lambda do
        return imaging_api.modify_wmf(AsposeImagingCloud::ModifyWmfRequest.new(name, bk_color, page_width, page_height, border_x, border_y, from_scratch, folder, storage))
      end

      properties_tester = lambda do |_original_properties, result_properties, _result_stream|
        assert_not_nil(result_properties.png_properties)
        assert_equal(page_width + (border_x * 2), result_properties.width)
        assert_equal(page_height + (border_y * 2), result_properties.height)
      end

      get_request_tester('ModifyWmfTest', "Input image: #{name}; BackColor: #{bk_color}; Page width: #{page_width}; Page height: #{page_height}; BorderX: #{border_x}; BorderY: #{border_y}", name, request_invoker, properties_tester, folder, storage)
    end

    #  Test create_modified_wmf
    [true, false].each do |save_result_to_storage|
      define_method("test_create_modified_wmf_save_to_storage_#{save_result_to_storage}") do
        name = 'test.wmf'
        bk_color = 'gray'
        page_width = 300
        page_height = 300
        border_x = 50
        border_y = 50
        out_name = name + '_specific.png'
        folder = @temp_folder
        storage = @test_storage
        from_scratch = nil

        request_invoker = lambda do |input_stream, out_path|
          return imaging_api.create_modified_wmf(AsposeImagingCloud::CreateModifiedWmfRequest.new(input_stream, bk_color, page_width, page_height, border_x, border_y, from_scratch, out_path, storage))
        end

        properties_tester = lambda do |_original_properties, result_properties, _result_stream|
          assert_not_nil(result_properties.png_properties)
          assert_equal(page_width + (border_x * 2), result_properties.width)
          assert_equal(page_height + (border_y * 2), result_properties.height)
        end

        post_request_tester('CreateModifiedWmfTest', save_result_to_storage, "Input image: #{name}; BackColor: #{bk_color}; Page width: #{page_width}; Page height: #{page_height}; BorderX: #{border_x}; BorderY: #{border_y}", name, out_name, request_invoker, properties_tester, folder, storage)
      end
    end
  end
end
