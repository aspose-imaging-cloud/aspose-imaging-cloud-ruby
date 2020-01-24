#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_deskew_api.rb">
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
  class TestDeskewApi < ImagingApiTester
    #  Class for testing DeskewAPI

    # Test deskew_image
    (@extended_test ? ['.jpg', '.bmp', '.gif', '.j2k', '.png', '.psd', '.tiff', '.webp'] : ['.jpg']).each do |format_extension|
      define_method("test_deskew_image_format_extension_#{format_extension}") do
        folder = @temp_folder
        storage = @test_storage
        resize_proportionally = true
        bk_color = nil
        formats_to_export = @basic_export_formats

        properties_tester = lambda do |_original_properties, result_properties, _result_stream|
          assert_not_nil(_result_stream)
        end

        @input_test_files.each do |input_file|
          next unless input_file.name.to_s.end_with?(format_extension)

          name = input_file.name
          request_invoker = lambda do
            return imaging_api.deskew_image(AsposeImagingCloud::DeskewImageRequest.new(name, resize_proportionally, bk_color, folder, storage))
          end

          get_request_tester('DeskewImageTest', "Input image: #{name}; Output format: #{format_extension}; Resize proportionally: #{resize_proportionally}; Background color: #{bk_color};", name, request_invoker, properties_tester, folder, storage)
        end
      end
    end

    # Test create_deskewed_image
    (@extended_test ? ['.jpg', '.bmp', '.gif', '.j2k', '.png', '.psd', '.tiff', '.webp'] : ['.jpg']).each do |format_extension|
      [true, false].each do |save_result_to_storage|
        define_method("test_create_deskewed_image_save_to_storage_#{save_result_to_storage}_format_extension_#{format_extension}") do
          resize_proportionally = true
          bk_color = nil
          folder = @temp_folder
          storage = @test_storage

          properties_tester = lambda do |_original_properties, result_properties, _result_stream|
            assert_equal(_original_properties.bits_per_pixel, result_properties.bits_per_pixel)
            assert_equal(_original_properties.bits_per_pixel, result_properties.bits_per_pixel)
          end
          @input_test_files.each do |input_file|
            next unless input_file.name.to_s.end_with?(format_extension)

            name = input_file.name
            request_invoker = lambda do |input_stream, out_path|
              return imaging_api.create_deskewed_image(AsposeImagingCloud::CreateDeskewedImageRequest.new(input_stream, resize_proportionally, bk_color, out_path, storage))
            end

            out_name = "#{name}_deskewed#{format_extension}}"
            post_request_tester('CreateDeskewedImageTest', save_result_to_storage, "Input image: #{name}; Output format: #{format_extension}; Resize proportionally: #{resize_proportionally}; Background color: #{bk_color};", name, out_name, request_invoker, properties_tester, folder, storage)
          end
        end
      end
    end
  end
end
