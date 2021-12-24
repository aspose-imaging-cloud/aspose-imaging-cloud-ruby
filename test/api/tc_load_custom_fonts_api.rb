# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_load_custom_fonts_api.rb">
#    Copyright (c) 2018-2021 Aspose Pty Ltd. All rights reserved.
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
  class TestLoadCustomFontsApi < ImagingApiTester
    #  Class for testing using custom fonts

    #
    #     Performs testing using custom fonts
	#
	#
    #
    
	def test_using_custom_fonts_for_vector_image 
		folder = @temp_folder
		storage = @test_storage
		formats_to_export = @basic_export_formats
		name = 'image.emz'
		format ='png'     

		copy_input_file_to_test_folder(name, folder, storage)	
		
		request_invoker = lambda do
		  return imaging_api.convert_image(AsposeImagingCloud::ConvertImageRequest.new(name, format, folder, storage))
		end
		
		properties_tester = lambda do |_original_properties, result_properties, _result_stream|
           assert((_result_stream.size-11454).abs < 100)
        end

		get_request_tester('LoadCustomFontsTest', "Input image: #{name}; Output format: #{format}", name, request_invoker, properties_tester, folder, storage)
	end
	
	def copy_input_file_to_test_folder(input_file_name, folder, storage) 
		if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(File.join(folder, input_file_name), storage)).exists
			return
		end

		imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new(File.join(original_data_folder+'/UseCases', input_file_name), File.join(folder, input_file_name), storage, storage))
	end
	
  end 
end 
