# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_frames_api.rb">
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
  class TestFramesApi < ImagingApiTester
    # Class for testing Frames API

    def setup
      super
      @formats_without_properties = %w[.cdr .cmx .otg]
    end

    # Test get_image_frame
    (@@extended_test ? %w[.cdr .cmx .dicom .djvu .gif .odg .otg .psd .webp] : ['.tiff']).each do |format_extension|
      define_method("test_get_image_frame_#{format_extension}") do
        frame_id = 1
        folder = @temp_folder
        storage = @test_storage
        export_format = get_export_format(format_extension, true)

        properties_tester = lambda do |_original_properties, result_properties, _result_stream|
          assert_not_nil(result_properties)
          return if formats_without_properties.include? export_format

          properties_name = get_properties_name(export_format)
          result_format_properties = result_properties.instance_variable_get('@' + properties_name)
          assert_not_nil(result_format_properties)
        end

        multipage_input_test_files.each do |input_file|
          next unless input_file.name.to_s.end_with?(format_extension)

          name = input_file.name

          request_invoker = lambda do
            return imaging_api.get_image_frame(AsposeImagingCloud::GetImageFrameRequest.new(
                name,
                frame_id,
                nil,
                nil,
                nil,
                nil,
                nil,
                nil,
                nil,
                nil,
                folder,
                storage
            ))
          end
          get_request_tester('GetImageFrameTest', "Input image: #{name}; Frame id: #{frame_id}", name, request_invoker,
                             properties_tester, folder, storage)
        end
      end
    end

    # Test create_image_frame
    (@@extended_test ? %w[.cdr .cmx .dicom .djvu .gif .odg .otg .psd .webp] : ['.tiff']).each do |format_extension|
      [true, false].each do |save_result_to_storage|
        define_method("test_create_image_frame_save_result_to_storage_#{save_result_to_storage}_#{format_extension}") do
          frame_id = 1
          folder = @temp_folder
          storage = @test_storage
          export_format = get_export_format(format_extension, true)

          properties_tester = lambda do |_original_properties, result_properties, _result_stream|
            assert_not_nil(result_properties)
            return if formats_without_properties.include? export_format || export_format == '.pdf'

            properties_name = get_properties_name(export_format)
            result_format_properties = result_properties.instance_variable_get('@' + properties_name)
            assert_not_nil(result_format_properties)
          end

          multipage_input_test_files.each do |input_file|
            next unless input_file.name.to_s.end_with?(format_extension)

            name = input_file.name
            out_name = "#{name}_single_frame#{export_format}"

            request_invoker = lambda do |input_stream, out_path|
              return imaging_api.create_image_frame(AsposeImagingCloud::CreateImageFrameRequest.new(
                  input_stream,
                  frame_id,
                  nil,
                  nil,
                  nil,
                  nil,
                  nil,
                  nil,
                  nil,
                  nil,
                  out_path,
                  storage
              ))
            end
            post_request_tester('CreateImageFrameTest', save_result_to_storage, "Input image: #{name}; Frame id: #{frame_id}", name, out_name,
                                request_invoker, properties_tester, folder, storage)
          end
        end
      end
    end

    # Test get_image_frame_range
    (@@extended_test ? %w[.cdr .cmx .dicom .djvu .gif .odg .otg .psd .webp] : ['.tiff']).each do |format_extension|
      define_method("test_get_image_frame_range_#{format_extension}") do
        start_frame_id = 0
        end_frame_id = 1
        folder = @temp_folder
        storage = @test_storage
        export_format = get_export_format(format_extension, false)

        properties_tester = lambda do |_original_properties, result_properties, _result_stream|
          assert_not_nil(result_properties)
          return if formats_without_properties.include? export_format

          properties_name = get_properties_name(export_format)
          result_format_properties = result_properties.instance_variable_get('@' + properties_name)
          assert_not_nil(result_format_properties)
        end

        multipage_input_test_files.each do |input_file|
          next unless input_file.name.to_s.end_with?(format_extension)

          name = input_file.name

          request_invoker = lambda do
            return imaging_api.get_image_frame_range(AsposeImagingCloud::GetImageFrameRangeRequest.new(
                name,
                start_frame_id,
                end_frame_id,
                nil,
                nil,
                nil,
                nil,
                nil,
                nil,
                nil,
                nil,
                folder,
                storage
            ))
          end
          get_request_tester('GetImageFrameRangeTest', "Input image: #{name}; Start frame id: #{start_frame_id}; End frame id: #{end_frame_id}",
                             name, request_invoker, properties_tester, folder, storage)
        end
      end
    end

    # Test create_image_frame_range
    (@@extended_test ? %w[.cdr .cmx .dicom .djvu .gif .odg .otg .psd .webp] : ['.tiff']).each do |format_extension|
      [true, false].each do |save_result_to_storage|
        define_method("test_create_image_frame_range_save_result_to_storage_#{save_result_to_storage}_#{format_extension}") do
          start_frame_id = 0
          end_frame_id = 1
          folder = @temp_folder
          storage = @test_storage
          export_format = get_export_format(format_extension, false)

          properties_tester = lambda do |_original_properties, result_properties, _result_stream|
            assert_not_nil(result_properties)
            return if formats_without_properties.include? export_format || export_format == '.pdf'

            properties_name = get_properties_name(export_format)
            result_format_properties = result_properties.instance_variable_get('@' + properties_name)
            assert_not_nil(result_format_properties)
          end

          multipage_input_test_files.each do |input_file|
            next unless input_file.name.to_s.end_with?(format_extension)

            name = input_file.name
            out_name = "#{name}_multi_frame#{export_format}"

            request_invoker = lambda do |input_stream, out_path|
              return imaging_api.create_image_frame_range(AsposeImagingCloud::CreateImageFrameRangeRequest.new(
                  input_stream,
                  start_frame_id,
                  end_frame_id,
                  nil,
                  nil,
                  nil,
                  nil,
                  nil,
                  nil,
                  nil,
                  nil,
                  out_path,
                  storage
              ))
            end
            post_request_tester('CreateImageFrameRangeTest', save_result_to_storage, "Input image: #{name}; Start frame id: #{start_frame_id}; End frame id: #{end_frame_id}", name, out_name,
                                request_invoker, properties_tester, folder, storage)
          end
        end
      end
    end

    # Test get_frame_properties
    (@@extended_test ? %w[.cdr .cmx .dicom .djvu .gif .odg .otg .psd .webp] : ['.tiff']).each do |format_extension|
      define_method("test_get_image_frame_properties_#{format_extension}") do
        frame_id = 1
        folder = @temp_folder
        storage = @test_storage

        multipage_input_test_files.each do |input_file|
          next unless input_file.name.to_s.end_with?(format_extension)

          name = input_file.name
          copy_input_file_to_test_folder(name, folder, storage)

          puts 'GetImageFramePropertiesTest'
          puts "Input image: #{name}; Frame id: #{frame_id}"

          response_message = imaging_api.get_image_frame_properties(
              AsposeImagingCloud::GetImageFramePropertiesRequest.new(name, frame_id, folder, storage)
          )

          assert_not_nil(response_message)
          next if formats_without_properties.include? format_extension

          properties_name = get_properties_name(format_extension)
          result_format_properties = response_message.instance_variable_get('@' + properties_name)
          assert_not_nil(result_format_properties)
        end
      end
    end

    # Test extract_frame_properties
    (@@extended_test ? %w[.cdr .cmx .dicom .djvu .gif .odg .otg .psd .webp] : ['.tiff']).each do |format_extension|
      define_method("test_extract_image_frame_properties_#{format_extension}") do
        frame_id = 1
        folder = @temp_folder
        storage = @test_storage

        multipage_input_test_files.each do |input_file|
          next unless input_file.name.to_s.end_with?(format_extension)

          name = input_file.name
          copy_input_file_to_test_folder(name, folder, storage)
          image_data = imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new(File.join(folder, name), storage))

          puts 'ExtractImageFramePropertiesTest'
          puts "Input image: #{name}; Frame id: #{frame_id}"

          response_message = imaging_api.extract_image_frame_properties(
              AsposeImagingCloud::ExtractImageFramePropertiesRequest.new(image_data, frame_id)
          )

          assert_not_nil(response_message)
          next if formats_without_properties.include? format_extension

          properties_name = get_properties_name(format_extension)
          result_format_properties = response_message.instance_variable_get('@' + properties_name)
          assert_not_nil(result_format_properties)
        end
      end
    end

    private

    attr_reader :formats_without_properties

    def get_properties_name(format)
      # Returns field name containing properties for specified format
      raise ArgumentError, 'Invalid format' unless format

      if format == '.jpg'
        format = '.jpeg'
      elsif format == '.j2k'
        format = '.jpeg2000'
      elsif format == '.webp'
        format = '.web_p'
      end

      format.tr('.', '') + '_properties'
    end

    def get_export_format(format, is_single_frame)
      # Returns default export format for specified image format and single or range frame mode

      if %w[.dicom .dng .djvu .cdr .cmx .odg .otg .svg].include? format
        return is_single_frame ? '.psd' : '.pdf'
      end

      format
    end
  end
end
