#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_crop_api.rb">
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
  class TestCropApi < ImagingApiTester
    #  Class for testing CropAPI

    # Test crop_image
    (@extended_test ? ['.jpg'] : ['.jpg', '.bmp', '.dicom', '.gif', '.j2k', '.png', '.psd', '.tiff', '.webp']).each do |format_extension|
      define_method("test_crop_image_format_extension_#{format_extension}") do
        x = 10
        y = 10
        width = 100
        height = 150
        folder = @temp_folder
        storage = @test_storage
        formats_to_export = @basic_export_formats

        properties_tester = lambda do |_original_properties, result_properties, _result_stream|
          assert_equal(width, result_properties.width)
          assert_equal(height, result_properties.height)
        end

        @input_test_files.each do |input_file|
          next unless input_file.name.to_s.end_with?(format_extension)

          name = input_file.name
          formats_to_export.each do |format|
            request_invoker = lambda do
              return imaging_api.crop_image(AsposeImagingCloud::CropImageRequest.new(name, format, x, y, width, height, folder, storage))
            end

            get_request_tester('CropImageTest', "Input image: #{name}; Output format: #{format}; Width: #{width}; Height: #{height}; X: #{x}; Y: #{y}", name, request_invoker, properties_tester, folder, storage)
          end
        end
      end
    end

    # Test create_cropped_image
    (@extended_test ? ['.jpg'] : ['.jpg', '.bmp', '.dicom', '.gif', '.j2k', '.png', '.psd', '.tiff', '.webp']).each do |format_extension|
      [true, false].each do |save_result_to_storage|
        define_method("test_create_cropped_image_save_to_storage_#{save_result_to_storage}_format_extension_#{format_extension}") do
          x = 10
          y = 10
          width = 100
          height = 150
          folder = @temp_folder
          storage = @test_storage
          formats_to_export = @basic_export_formats

          properties_tester = lambda do |_original_properties, result_properties, _result_stream|
            assert_equal(width, result_properties.width)
            assert_equal(height, result_properties.height)
          end
          @input_test_files.each do |input_file|
            next unless input_file.name.to_s.end_with?(format_extension)

            name = input_file.name
            formats_to_export.each do |format|
              request_invoker = lambda do |input_stream, out_path|
                return imaging_api.create_cropped_image(AsposeImagingCloud::CreateCroppedImageRequest.new(input_stream, format, x, y, width, height, out_path, storage))
              end

              out_name = "#{name}_crop.#{format}}"
              post_request_tester('CreateCroppedImageTest', save_result_to_storage, "Input image: #{name}; Output format: #{format}; Width: #{width}; Height: #{height}; X: #{x}; Y: #{y}", name, out_name, request_invoker, properties_tester, folder, storage)
            end
          end
        end
      end
    end
  end
end
