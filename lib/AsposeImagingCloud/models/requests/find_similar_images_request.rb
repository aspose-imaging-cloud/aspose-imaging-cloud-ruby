#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="find_similar_images_request.rb">
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
  # Request model for find_similar_images operation.
  class FindSimilarImagesRequest < ImagingRequest

    # Find similar images. Image data may be passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [String] search_context_id The search context identifier.
    # @param [Float] similarity_threshold The similarity threshold.
    # @param [Integer] max_count The maximum count.
    # @param [File] image_data Input image
    # @param [String] image_id The search image identifier.
    # @param [String] folder The folder.
    # @param [String] storage The storage.
    def initialize(search_context_id, similarity_threshold, max_count, image_data = nil, image_id = nil, folder = nil, storage = nil)
      @search_context_id = search_context_id
      @similarity_threshold = similarity_threshold
      @max_count = max_count
      @image_data = image_data
      @image_id = image_id
      @folder = folder
      @storage = storage
    end

    def to_http_info(config)
      # verify the required parameter 'search_context_id' is set
      if config.client_side_validation && @search_context_id.nil?
        raise ArgumentError, "Missing the required parameter 'search_context_id' when calling ImagingApi.find_similar_images"
      end

      # verify the required parameter 'similarity_threshold' is set
      if config.client_side_validation && @similarity_threshold.nil?
        raise ArgumentError, "Missing the required parameter 'similarity_threshold' when calling ImagingApi.find_similar_images"
      end

      # verify the required parameter 'max_count' is set
      if config.client_side_validation && @max_count.nil?
        raise ArgumentError, "Missing the required parameter 'max_count' when calling ImagingApi.find_similar_images"
      end

      # resource path
      local_var_path = '/imaging/ai/imageSearch/{searchContextId}/findSimilar'.sub('{' + 'searchContextId' + '}', @search_context_id.to_s)

      # query parameters
      query_params = {}
      query_params[:similarityThreshold] = @similarity_threshold
      query_params[:maxCount] = @max_count
      query_params[:imageId] = @image_id unless @image_id.nil?
      query_params[:folder] = @folder unless @folder.nil?
      query_params[:storage] = @storage unless @storage.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params['imageData'] = @image_data unless @image_data.nil?

      # http body (model)
      post_body = nil
      auth_names = ['JWT']

      AsposeImagingCloud::HttpRequest.new(local_var_path,
                                      header_params,
                                      query_params,
                                      form_params,
                                      post_body,
                                      auth_names)
    end
  end
end
