# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_tiff_api.rb">
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
  class TestTiffApi < ImagingApiTester
    #  Class for testing TiffApi

    def test_convert_tiff_to_fax
      #  Test convert_tiff_to_fax
      name = 'test.tiff'
      folder = @temp_folder
      storage = @test_storage

      request_invoker = lambda do
        return imaging_api.convert_tiff_to_fax(AsposeImagingCloud::ConvertTiffToFaxRequest.new(name, storage, folder))
      end

      properties_tester = lambda do |_original_properties, result_properties, _result_stream|
        assert_not_nil(result_properties.tiff_properties)
        assert_equal(1, result_properties.bits_per_pixel)
        assert_equal(196, result_properties.vertical_resolution)
        assert_equal(204, result_properties.horizontal_resolution)
        assert_equal(1728, result_properties.width)
        assert_equal(2200, result_properties.height)
      end

      get_request_tester('ConvertTiffToFaxTest', "Input image: #{name}", name, request_invoker, properties_tester, folder, storage)
    end

    #  Test convert_tiff_to_fax
    [true, false].each do |save_result_to_storage|
      define_method("test_create_fax_tiff_save_to_storage_#{save_result_to_storage}") do
      name = 'test.tiff'
      folder = @temp_folder
      storage = @test_storage
      out_name = name + '_specific.tiff'

      request_invoker = lambda do |input_stream, out_path|
        return imaging_api.create_fax_tiff(AsposeImagingCloud::CreateFaxTiffRequest.new(input_stream, out_path, storage))
      end

      properties_tester = lambda do |_original_properties, result_properties, _result_stream|
        assert_not_nil(result_properties.tiff_properties)
        assert_equal(1, result_properties.bits_per_pixel)
        assert_equal(196, result_properties.vertical_resolution)
        assert_equal(204, result_properties.horizontal_resolution)
        assert_equal(1728, result_properties.width)
        assert_equal(2200, result_properties.height)
      end

      post_request_tester('CreateFaxTiff',
                          save_result_to_storage,
                          "Input image: #{name}",
                          name,
                          out_name,
                          request_invoker,
                          properties_tester,
                          folder,
                          storage)
      end
    end

    #  Test create_modified_tiff
    [true, false].each do |save_result_to_storage|
      define_method("test_create_modified_tiff_save_to_storage_#{save_result_to_storage}") do
        name = 'test.tiff'
        compression = 'adobedeflate'
        resolution_unit = 'inch'
        bit_depth = 1
        horizontal_resolution = 150
        vertical_resolution = 150
        out_name = name + '_specific.tiff'
        folder = @temp_folder
        storage = @test_storage
        from_scratch = nil

        request_invoker = lambda do |input_stream, out_path|
          kwargs = { 'horizontal_resolution' => horizontal_resolution, 'vertical_resolution' => vertical_resolution, 'storage' => storage }
          kwargs['out_path'] = out_path unless out_path.nil?
          return imaging_api.create_modified_tiff(AsposeImagingCloud::CreateModifiedTiffRequest.new(input_stream, bit_depth, compression, resolution_unit, horizontal_resolution, vertical_resolution, from_scratch, out_path, storage))
        end

        properties_tester = lambda do |original_properties, result_properties, _result_stream|
          assert_not_nil(result_properties.tiff_properties)
          assert_equal(bit_depth > 1 ? bit_depth * 4 : bit_depth, result_properties.bits_per_pixel)
          assert_equal(vertical_resolution, result_properties.vertical_resolution)
          assert_equal(horizontal_resolution, result_properties.horizontal_resolution)
          assert_not_nil(original_properties.tiff_properties)
          assert_equal(original_properties.tiff_properties.frames.size, result_properties.tiff_properties.frames.size)
          assert_equal(original_properties.width, result_properties.width)
          assert_equal(original_properties.height, result_properties.height)
        end

        post_request_tester('CreateModifiedTiffTest', save_result_to_storage, "Input image: #{name}; Compression: #{compression}; Bit depth: #{bit_depth}; Horizontal resolution: #{horizontal_resolution}; Vertical resolution: #{vertical_resolution}", name, out_name, request_invoker, properties_tester, folder, storage)
      end
    end
  end

  def test_append_tiff
    #  Test append_tiff
    passed = false
    print('AppendTiffTest')
    input_file_name = 'test.tiff'
    folder = @temp_folder
    unless check_input_file_exists.call(input_file_name)
      raise TypeError, "Input file #{input_file_name} doesn't exist in the specified storage folder: #{folder}. Please, upload it first."
    end

    result_file_name = input_file_name + '_merged.tiff'
    input_path = (@temp_folder + '/') + input_file_name
    storage = @test_storage

    begin
      print('Input image: ' + input_file_name)
      out_path = (@temp_folder + '/') + result_file_name

      if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(out_path, storage)).exists
        imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new(out_path, storage))
      end

      unless imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(input_path, storage)).exists
        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((@original_data_folder + '/') + input_file_name, (folder + '/') + input_file_name, storage, storage))
      end

      imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new(input_path, out_path, storage, storage))
      assert(imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(out_path, storage)))
      imaging_api.append_tiff(AsposeImagingCloud::AppendTiffRequest.new(result_file_name, input_file_name, storage, folder))
      result_info = @_get_storage_file_info.call(folder, result_file_name, storage)

      unless result_info
        raise TypeError, "Result file #{result_file_name} doesn't exist in the specified storage folder: #{folder}. Result isn't present in the storage by an unknown reason."
      end

      result_properties = imaging_api.get_image_properties(AsposeImagingCloud::GetImagePropertiesRequest.new(result_file_name, folder, storage))
      assert_not_nil(result_properties)
      original_properties = imaging_api.get_image_properties(AsposeImagingCloud::GetImagePropertiesRequest.new(input_file_name, folder, storage))
      assert_not_nil(original_properties)
      assert_not_nil(result_properties.tiff_properties)
      assert_not_nil(original_properties.tiff_properties)
      assert_equal(original_properties.tiff_properties.frames.size * 2, result_properties.tiff_properties.frames.size)
      assert_equal(original_properties.width, result_properties.width)
      assert_equal(original_properties.height, result_properties.height)
      passed = true

    rescue StandardError => e
      @failed_any_test = true
      print(e)

    ensure
      if @remove_result && imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(out_path, storage)).exists
        imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new(out_path, storage))
        print('Test passed: ' + passed.to_s)
      end
    end
  end
end
