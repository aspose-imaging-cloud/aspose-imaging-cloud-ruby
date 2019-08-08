# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_wep_p_api.rb">
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
  class TestWebPApi < ImagingApiTester
    #  Class for testing WebPApi

    def test_modify_web_p
      #  Test modify_web_p
      name = 'Animation.webp'
      lossless = true
      quality = 90
      anum_loop_count = 5
      anim_background_color = 'gray'
      folder = @temp_folder
      storage = @test_storage
      from_scratch = nil

      request_invoker = lambda do
        return imaging_api.modify_web_p(AsposeImagingCloud::ModifyWebPRequest.new(name, lossless, quality, anum_loop_count, anim_background_color, from_scratch, folder, storage))
      end

      properties_tester = lambda do |original_properties, result_properties, _result_stream|
        assert_not_nil(result_properties.web_p_properties)
        assert_not_nil(original_properties.web_p_properties)
        assert_equal(original_properties.width, result_properties.width)
        assert_equal(original_properties.height, result_properties.height)
      end

      get_request_tester('ModifyWebPTest', "Input image: #{name}; AnimBackgroundColor: #{anim_background_color}; Lossless: #{lossless}; Quality: #{quality}; AnimLoopCount: #{anum_loop_count}", name, request_invoker, properties_tester, folder, storage)
    end

    #  Test create_modified_web_p
    [true, false].each do |save_result_to_storage|
      define_method("test_create_modified_web_p_save_to_storage_#{save_result_to_storage}") do
        name = 'Animation.webp'
        lossless = true
        quality = 90
        anum_loop_count = 5
        anim_background_color = 'gray'
        folder = @temp_folder
        storage = @test_storage
        out_name = name + '_specific.webp'
        from_scratch = nil

        request_invoker = lambda do |input_stream, out_path|
          return imaging_api.create_modified_web_p(AsposeImagingCloud::CreateModifiedWebPRequest.new(input_stream, lossless, quality, anum_loop_count, anim_background_color, from_scratch, out_path, storage))
        end

        properties_tester = lambda do |original_properties, result_properties, _result_stream|
          assert_not_nil(result_properties.web_p_properties)
          assert_not_nil(original_properties.web_p_properties)
          assert_equal(original_properties.width, result_properties.width)
          assert_equal(original_properties.height, result_properties.height)
        end

        post_request_tester('CreateModifiedWebPTest', save_result_to_storage, "Input image: #{name}; AnimBackgroundColor: #{anim_background_color}; Lossless: #{lossless}; Quality: #{quality}; AnimLoopCount: #{anum_loop_count}", name, out_name, request_invoker, properties_tester, folder, storage)
      end
    end
  end
end
