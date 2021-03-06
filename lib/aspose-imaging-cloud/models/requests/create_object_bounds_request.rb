#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="create_object_bounds_request.rb">
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
  # Request model for create_object_bounds operation.
  class CreateObjectBoundsRequest < ImagingRequest

    # Detects objects bounds. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [File] image_data Input image
    # @param [String] method Object detection method
    # @param [Integer] threshold Object detection probability threshold in percents
    # @param [BOOLEAN] include_label Draw detected objects labels
    # @param [BOOLEAN] include_score Draw detected objects scores
    # @param [String] allowed_labels Comma-separated list of allowed labels
    # @param [String] blocked_labels Comma-separated list of blocked labels
    # @param [String] out_path Path to updated file (if this is empty, response contains streamed image)
    # @param [String] storage Your Aspose Cloud Storage name.
    def initialize(image_data, method = nil, threshold = nil, include_label = nil, include_score = nil, allowed_labels = nil, blocked_labels = nil, out_path = nil, storage = nil)
      @image_data = image_data
      @method = method
      @threshold = threshold
      @include_label = include_label
      @include_score = include_score
      @allowed_labels = allowed_labels
      @blocked_labels = blocked_labels
      @out_path = out_path
      @storage = storage
    end

    def to_http_info(config)
      # verify the required parameter 'image_data' is set
      if config.client_side_validation && @image_data.nil?
        raise ArgumentError, "Missing the required parameter 'image_data' when calling ImagingApi.create_object_bounds"
      end

      # resource path
      local_var_path = '/imaging/ai/objectdetection/bounds'

      # query parameters
      query_params = {}
      query_params[:method] = @method unless @method.nil?
      query_params[:threshold] = @threshold unless @threshold.nil?
      query_params[:includeLabel] = @include_label unless @include_label.nil?
      query_params[:includeScore] = @include_score unless @include_score.nil?
      query_params[:allowedLabels] = @allowed_labels unless @allowed_labels.nil?
      query_params[:blockedLabels] = @blocked_labels unless @blocked_labels.nil?
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
