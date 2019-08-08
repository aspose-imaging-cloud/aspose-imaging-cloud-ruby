# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_save_as_api.rb">
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
  class TestSaveAsApi < ImagingApiTester
    #  Class for testing SaveAsAPI

    #
    #     Performs SaveAs (export to another format) operation test with GET
    #     method, taking input data from storage
    #
    (@extended_test ? ['.jpg', '.bmp', '.dicom', '.gif', '.j2k', '.png', '.psd', '.tiff', '.webp'] : ['.jpg']).each do |format_extension|
      define_method("test_save_image_as_format_extension_#{format_extension}") do
        folder = @temp_folder
        storage = @test_storage
        formats_to_export = @basic_export_formats

        @input_test_files.each do |input_file|
          next unless input_file.name.to_s.end_with?(format_extension)

          name = input_file.name
          formats_to_export.each do |format|
            request_invoker = lambda do
              return imaging_api.save_image_as(AsposeImagingCloud::SaveImageAsRequest.new(name, format, folder, storage))
            end

            get_request_tester('SaveImageAsTest', "Input image: #{name}; Output format: #{format}", name, request_invoker, ->(_x, _y, _z) { nil }, folder, storage)
          end
        end
      end
    end
  end

  #
  #     Performs SaveAs (export to another format) operation test with POST
  #     method, sending input data in request stream.
  #
  (@extended_test ? ['.jpg', '.bmp', '.dicom', '.gif', '.j2k', '.png', '.psd', '.tiff', '.webp'] : ['.jpg']).each do |format_extension|
    [true, false].each do |save_result_to_storage|
      define_method("test_create_saved_image_as_save_to_storage_#{save_result_to_storage}_format_extension_#{format_extension}") do
        folder = @temp_folder
        storage = @test_storage
        formats_to_export = @basic_export_formats

        @input_test_files.each do |input_file|
          next unless input_file.name.to_s.end_with?(format_extension)

          name = input_file.name
          formats_to_export.each do |format|
            request_invoker = lambda do |input_stream, out_path|
              kwargs = { 'storage' => storage }
              kwargs['out_path'] = out_path unless out_path.nil?
              return imaging_api.create_saved_image_as(AsposeImagingCloud::CreateSavedImageAsRequest.new(input_stream, format, out_path, storage))
            end

            out_name = "#{name}.#{format}"
            post_request_tester('CreateSavedImageAsTest', save_result_to_storage, "Input image: #{name}; Output format: #{format}", name, out_name, request_invoker, ->(_x, _y, _z) { nil }, folder, storage)
          end
        end
      end
    end
  end
end
