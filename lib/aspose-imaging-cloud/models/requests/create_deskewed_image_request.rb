#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="create_deskewed_image_request.rb">
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
  # Request model for create_deskewed_image operation.
  class CreateDeskewedImageRequest < ImagingRequest

    # Deskew an image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [File] image_data Input image
    # @param [BOOLEAN] resize_proportionally Resize proportionally
    # @param [String] bk_color Background color
    # @param [String] out_path Path to updated file (if this is empty, response contains streamed image)
    # @param [String] storage Your Aspose Cloud Storage name.
    def initialize(image_data, resize_proportionally, bk_color = nil, out_path = nil, storage = nil)
      @image_data = image_data
      @resize_proportionally = resize_proportionally
      @bk_color = bk_color
      @out_path = out_path
      @storage = storage
    end

    def to_http_info(config)
      # verify the required parameter 'image_data' is set
      if config.client_side_validation && @image_data.nil?
        raise ArgumentError, "Missing the required parameter 'image_data' when calling ImagingApi.create_deskewed_image"
      end

      # verify the required parameter 'resize_proportionally' is set
      if config.client_side_validation && @resize_proportionally.nil?
        raise ArgumentError, "Missing the required parameter 'resize_proportionally' when calling ImagingApi.create_deskewed_image"
      end

      # resource path
      local_var_path = '/imaging/deskew'

      # query parameters
      query_params = {}
      query_params[:resizeProportionally] = @resize_proportionally
      query_params[:bkColor] = @bk_color unless @bk_color.nil?
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
