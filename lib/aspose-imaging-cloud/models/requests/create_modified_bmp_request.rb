#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="create_modified_bmp_request.rb">
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
  # Request model for create_modified_bmp operation.
  class CreateModifiedBmpRequest < ImagingRequest

    # Update parameters of BMP image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [File] image_data Input image
    # @param [Integer] bits_per_pixel Color depth.
    # @param [Integer] horizontal_resolution New horizontal resolution.
    # @param [Integer] vertical_resolution New vertical resolution.
    # @param [BOOLEAN] from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @param [String] out_path Path to updated file (if this is empty, response contains streamed image).
    # @param [String] storage Your Aspose Cloud Storage name.
    def initialize(image_data, bits_per_pixel, horizontal_resolution, vertical_resolution, from_scratch = nil, out_path = nil, storage = nil)
      @image_data = image_data
      @bits_per_pixel = bits_per_pixel
      @horizontal_resolution = horizontal_resolution
      @vertical_resolution = vertical_resolution
      @from_scratch = from_scratch
      @out_path = out_path
      @storage = storage
    end

    def to_http_info(config)
      # verify the required parameter 'image_data' is set
      if config.client_side_validation && @image_data.nil?
        raise ArgumentError, "Missing the required parameter 'image_data' when calling ImagingApi.create_modified_bmp"
      end

      # verify the required parameter 'bits_per_pixel' is set
      if config.client_side_validation && @bits_per_pixel.nil?
        raise ArgumentError, "Missing the required parameter 'bits_per_pixel' when calling ImagingApi.create_modified_bmp"
      end

      # verify the required parameter 'horizontal_resolution' is set
      if config.client_side_validation && @horizontal_resolution.nil?
        raise ArgumentError, "Missing the required parameter 'horizontal_resolution' when calling ImagingApi.create_modified_bmp"
      end

      # verify the required parameter 'vertical_resolution' is set
      if config.client_side_validation && @vertical_resolution.nil?
        raise ArgumentError, "Missing the required parameter 'vertical_resolution' when calling ImagingApi.create_modified_bmp"
      end

      # resource path
      local_var_path = '/imaging/bmp'

      # query parameters
      query_params = {}
      query_params[:bitsPerPixel] = @bits_per_pixel
      query_params[:horizontalResolution] = @horizontal_resolution
      query_params[:verticalResolution] = @vertical_resolution
      query_params[:fromScratch] = @from_scratch unless @from_scratch.nil?
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
