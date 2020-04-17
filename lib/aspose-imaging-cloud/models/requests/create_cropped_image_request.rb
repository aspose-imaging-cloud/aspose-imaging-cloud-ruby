#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="create_cropped_image_request.rb">
#    Copyright (c) 2018-2020 Aspose Pty Ltd. All rights reserved.
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
  # Request model for create_cropped_image operation.
  class CreateCroppedImageRequest < ImagingRequest

    # Crop an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [File] image_data Input image
    # @param [Integer] x X position of start point for cropping rectangle.
    # @param [Integer] y Y position of start point for cropping rectangle.
    # @param [Integer] width Width of cropping rectangle.
    # @param [Integer] height Height of cropping rectangle.
    # @param [String] format Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
    # @param [String] out_path Path to updated file (if this is empty, response contains streamed image).
    # @param [String] storage Your Aspose Cloud Storage name.
    def initialize(image_data, x, y, width, height, format = nil, out_path = nil, storage = nil)
      @image_data = image_data
      @x = x
      @y = y
      @width = width
      @height = height
      @format = format
      @out_path = out_path
      @storage = storage
    end

    def to_http_info(config)
      # verify the required parameter 'image_data' is set
      if config.client_side_validation && @image_data.nil?
        raise ArgumentError, "Missing the required parameter 'image_data' when calling ImagingApi.create_cropped_image"
      end

      # verify the required parameter 'x' is set
      if config.client_side_validation && @x.nil?
        raise ArgumentError, "Missing the required parameter 'x' when calling ImagingApi.create_cropped_image"
      end

      # verify the required parameter 'y' is set
      if config.client_side_validation && @y.nil?
        raise ArgumentError, "Missing the required parameter 'y' when calling ImagingApi.create_cropped_image"
      end

      # verify the required parameter 'width' is set
      if config.client_side_validation && @width.nil?
        raise ArgumentError, "Missing the required parameter 'width' when calling ImagingApi.create_cropped_image"
      end

      # verify the required parameter 'height' is set
      if config.client_side_validation && @height.nil?
        raise ArgumentError, "Missing the required parameter 'height' when calling ImagingApi.create_cropped_image"
      end

      # resource path
      local_var_path = '/imaging/crop'

      # query parameters
      query_params = {}
      query_params[:x] = @x
      query_params[:y] = @y
      query_params[:width] = @width
      query_params[:height] = @height
      query_params[:format] = @format unless @format.nil?
      query_params[:outPath] = @out_path unless @out_path.nil?
      query_params[:storage] = @storage unless @storage.nil?

      # form parameters
      form_params = {}
      form_params['imageData'] = @image_data

      # http body (model)
      post_body = nil
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['multipart/form-data'])

      AsposeImagingCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end
