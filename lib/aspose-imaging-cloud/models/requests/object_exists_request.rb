#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="object_exists_request.rb">
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
  # Request model for object_exists operation.
  class ObjectExistsRequest < ImagingRequest

    # Check if file or folder exists
    # @param [String] path File or folder path e.g. &#39;/file.ext&#39; or &#39;/folder&#39;
    # @param [String] storage_name Storage name
    # @param [String] version_id File version ID
    def initialize(path, storage_name = nil, version_id = nil)
      @path = path
      @storage_name = storage_name
      @version_id = version_id
    end

    def to_http_info(config)
      # verify the required parameter 'path' is set
      if config.client_side_validation && @path.nil?
        raise ArgumentError, "Missing the required parameter 'path' when calling ImagingApi.object_exists"
      end

      # resource path
      local_var_path = '/imaging/storage/exist/{path}'.sub('{' + 'path' + '}', @path.to_s)

      # query parameters
      query_params = {}
      query_params[:storageName] = @storage_name unless @storage_name.nil?
      query_params[:versionId] = @version_id unless @version_id.nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['JWT']

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = form_params.any? ? 'multipart/form-data' : select_header_content_type(['application/json'])

      AsposeImagingCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end
