#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="filter_effect_image_request.rb">
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


require_relative './imaging_request'
require_relative './http_request'

module AsposeImagingCloud
  # Request model for filter_effect_image operation.
  class FilterEffectImageRequest < ImagingRequest

    # Apply filtering effects to an existing image.
    # @param [String] name Filename of an image.
    # @param [String] format Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
    # @param [String] filter_type Filter type (BigRectangular, SmallRectangular, Median, GaussWiener, MotionWiener, GaussianBlur, Sharpen, BilateralSmoothing).
    # @param [FilterPropertiesBase] filter_properties Filter properties.
    # @param [String] folder Folder with image to process.
    # @param [String] storage Your Aspose Cloud Storage name.
    def initialize(name, format, filter_type, filter_properties, folder = nil, storage = nil)
      @name = name
      @format = format
      @filter_type = filter_type
      @filter_properties = filter_properties
      @folder = folder
      @storage = storage
    end

    def to_http_info(config)
      # verify the required parameter 'name' is set
      if config.client_side_validation && @name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling ImagingApi.filter_effect_image"
      end

      # verify the required parameter 'format' is set
      if config.client_side_validation && @format.nil?
        raise ArgumentError, "Missing the required parameter 'format' when calling ImagingApi.filter_effect_image"
      end

      # verify the required parameter 'filter_type' is set
      if config.client_side_validation && @filter_type.nil?
        raise ArgumentError, "Missing the required parameter 'filter_type' when calling ImagingApi.filter_effect_image"
      end

      # verify the required parameter 'filter_properties' is set
      if config.client_side_validation && @filter_properties.nil?
        raise ArgumentError, "Missing the required parameter 'filter_properties' when calling ImagingApi.filter_effect_image"
      end

      # resource path
      local_var_path = '/imaging/{name}/filterEffect'.sub('{' + 'name' + '}', @name.to_s)

      # query parameters
      query_params = {}
      query_params[:format] = @format
      query_params[:filterType] = @filter_type
      query_params[:folder] = @folder unless @folder.nil?
      query_params[:storage] = @storage unless @storage.nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = object_to_http_body(@filter_properties)
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['application/json', 'application/xml'])

      AsposeImagingCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end
