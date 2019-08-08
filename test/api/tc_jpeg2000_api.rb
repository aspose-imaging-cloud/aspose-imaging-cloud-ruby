# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_jpeg2000_api.rb">
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
  class TestJpeg2000Api < ImagingApiTester
    #  Class for testing Jpeg2000API

    def test_get_image_jpeg200
      #  Test modify_jpeg2000
      name = 'test.j2k'
      codec = 'jp2'
      comment = 'Aspose'
      folder = @temp_folder
      storage = @test_storage
      from_scratch = nil

      request_invoker = lambda do
        return imaging_api.modify_jpeg2000(AsposeImagingCloud::ModifyJpeg2000Request.new(name, comment, codec, from_scratch, folder, storage))
      end

      properties_tester = lambda do |original_properties, result_properties, _result_stream|
        assert_not_nil(result_properties.jpeg2000_properties)
        assert_not_nil(result_properties.jpeg2000_properties.codec)
        assert_equal(codec, result_properties.jpeg2000_properties.codec.downcase)
        assert_not_nil(result_properties.jpeg2000_properties.comments)
        assert_equal(comment, result_properties.jpeg2000_properties.comments[0])
        assert_not_nil(original_properties.jpeg2000_properties)
        assert_equal(original_properties.width, result_properties.width)
        assert_equal(original_properties.height, result_properties.height)
        assert_not_nil(original_properties.jpeg2000_properties.comments)
        assert_not_same(comment, original_properties.jpeg2000_properties.comments[0])
      end

      get_request_tester("ModifyJpeg2000Test', 'Input image: #{name}; Comment: #{comment}; Codec: #{codec}", name, request_invoker, properties_tester, folder, storage)
    end

    #  Test create_modified_jpeg2000
    [true, false].each do |save_result_to_storage|
      define_method("test_create_modified_jpeg2000_save_to_storage_#{save_result_to_storage}") do
        name = 'test.j2k'
        codec = 'jp2'
        comment = 'Aspose'
        out_name = name + '_specific.jp2'
        folder = @temp_folder
        storage = @test_storage
        from_scratch = nil

        request_invoker = lambda do |input_stream, out_path|
          return imaging_api.create_modified_jpeg2000(AsposeImagingCloud::CreateModifiedJpeg2000Request.new(input_stream, comment, codec, from_scratch, out_path, storage))
        end

        properties_tester = lambda do |original_properties, result_properties, _result_stream|
          assert_not_nil(result_properties.jpeg2000_properties)
          assert_not_nil(result_properties.jpeg2000_properties.codec)
          assert_equal(codec, result_properties.jpeg2000_properties.codec.downcase)
          assert_not_nil(result_properties.jpeg2000_properties.comments)
          assert_equal(comment, result_properties.jpeg2000_properties.comments[0])
          assert_not_nil(original_properties.jpeg2000_properties)
          assert_equal(original_properties.width, result_properties.width)
          assert_equal(original_properties.height, result_properties.height)
          assert_not_nil(original_properties.jpeg2000_properties.comments)
          assert_not_same(comment, original_properties.jpeg2000_properties.comments[0])
        end

        post_request_tester('CreateModifiedJpeg2000Test', save_result_to_storage, "Input image: #{name}; Comment: #{comment}; Codec: #{codec}", name, out_name, request_invoker, properties_tester, folder, storage)
      end
    end
  end
end
