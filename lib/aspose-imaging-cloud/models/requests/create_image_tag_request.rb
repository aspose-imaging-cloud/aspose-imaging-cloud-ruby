#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="create_image_tag_request.rb">
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
  # Request model for create_image_tag operation.
  class CreateImageTagRequest < ImagingRequest

    # Add tag and reference image to search context. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [File] image_data Input image
    # @param [String] search_context_id The search context identifier.
    # @param [String] tag_name The tag.
    # @param [String] folder The folder.
    # @param [String] storage The storage.
    def initialize(image_data, search_context_id, tag_name, folder = nil, storage = nil)
      @image_data = image_data
      @search_context_id = search_context_id
      @tag_name = tag_name
      @folder = folder
      @storage = storage
    end

    def to_http_info(config)
      # verify the required parameter 'image_data' is set
      if config.client_side_validation && @image_data.nil?
        raise ArgumentError, "Missing the required parameter 'image_data' when calling ImagingApi.create_image_tag"
      end

      # verify the required parameter 'search_context_id' is set
      if config.client_side_validation && @search_context_id.nil?
        raise ArgumentError, "Missing the required parameter 'search_context_id' when calling ImagingApi.create_image_tag"
      end

      # verify the required parameter 'tag_name' is set
      if config.client_side_validation && @tag_name.nil?
        raise ArgumentError, "Missing the required parameter 'tag_name' when calling ImagingApi.create_image_tag"
      end

      # resource path
      local_var_path = '/imaging/ai/imageSearch/{searchContextId}/addTag'.sub('{' + 'searchContextId' + '}', @search_context_id.to_s)

      # query parameters
      query_params = {}
      query_params[:tagName] = @tag_name
      query_params[:folder] = @folder unless @folder.nil?
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
