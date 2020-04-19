# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_filter_effect_api.rb">
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
  class Filter
    #  Wrapper for filter type and filter properties
    attr_reader :filter_properties, :filter_type

    def initialize(filter_type, filter_properties)
      #  Creates Filter instance
      @filter_type = filter_type
      @filter_properties = filter_properties
    end
  end

  class TestFilterEffectApi < ImagingApiTester
    #  Class for testing FilterEffectAPI

    filters = [
      Filter.new('BigRectangular', AsposeImagingCloud::BigRectangularFilterProperties.new),
      Filter.new('SmallRectangular', AsposeImagingCloud::SmallRectangularFilterProperties.new),
      Filter.new('Median', AsposeImagingCloud::MedianFilterProperties.new(Size: 3)),
      Filter.new('GaussWiener', AsposeImagingCloud::GaussWienerFilterProperties.new(Radius: 2, Smooth: 2)),
      Filter.new('MotionWiener', AsposeImagingCloud::MotionWienerFilterProperties.new(Length: 2, Smooth: 2, Angle: 12)),
      Filter.new('GaussianBlur', AsposeImagingCloud::GaussianBlurFilterProperties.new(Radius: 2, Sigma: 2)),
      Filter.new('Sharpen', AsposeImagingCloud::SharpenFilterProperties.new(Size: 2, Sigma: 0.5)),
      Filter.new('BilateralSmoothing', AsposeImagingCloud::BilateralSmoothingFilterProperties.new(Size: 20, Spatial_factor: 0.02, Spatial_power: 0.02, Color_factor: 0.02, color_power: 0.02))
    ]

    #  Test filter_effect_image
    (@@extended_test ? ['.dicom', '.djvu', '.gif', '.psd', '.tiff', '.webp'] : ['.psd']).each do |format_extension|
      define_method("test_filter_effect_format_extension_#{format_extension}") do
        folder = @temp_folder
        storage = @test_storage
        formats_to_export = @basic_export_formats

        properties_tester = lambda do |original_properties, result_properties, result_stream|
          # pass
        end

        basic_input_test_files.each do |input_file|
          next unless input_file.name.to_s.end_with?(format_extension)

          name = input_file.name
          filters.each do |filter|
            formats_to_export.each do |format|
			  if formatExtension == ".psd" && format == "webp"
				next
			  end
			  
              request_invoker = lambda do
                return @imaging_api.filter_effect_image(AsposeImagingCloud::FilterEffectImageRequest.new(name, filter.filter_type, filter.filter_properties, format, folder, storage))
              end

              get_request_tester('FilterEffectTest', "Input image: #{name}; Output format: #{format}; Filter type: #{filter.filter_type}", name, request_invoker, properties_tester, folder, storage)
            end
          end
        end
      end
    end
  end
end
