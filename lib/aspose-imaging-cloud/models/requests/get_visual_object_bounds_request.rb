#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="get_visual_object_bounds_request.rb">
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
  # Request model for get_visual_object_bounds operation.
  class GetVisualObjectBoundsRequest < ImagingRequest

    # Detects objects bounds and draw them on the original image
    # @param [String] name The image features detector.
    # @param [String] method Object detection method
    # @param [Integer] threshold Object detection probability threshold in percents
    # @param [BOOLEAN] include_label Draw detected objects labels
    # @param [BOOLEAN] include_score Draw detected objects scores
    # @param [String] allowed_labels Comma-separated list of allowed labels
    # @param [String] blocked_labels Comma-separated list of blocked labels
    # @param [String] color Bounds, labels, and scores text color
    # @param [String] folder The folder.
    # @param [String] storage The storage.
    def initialize(name, method = nil, threshold = nil, include_label = nil, include_score = nil, allowed_labels = nil, blocked_labels = nil, color = nil, folder = nil, storage = nil)
      @name = name
      @method = method
      @threshold = threshold
      @include_label = include_label
      @include_score = include_score
      @allowed_labels = allowed_labels
      @blocked_labels = blocked_labels
      @color = color
      @folder = folder
      @storage = storage
    end

    def to_http_info(config)
      # verify the required parameter 'name' is set
      if config.client_side_validation && @name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling ImagingApi.get_visual_object_bounds"
      end

      # resource path
      local_var_path = '/imaging/ai/objectdetection/{name}/visualbounds'.sub('{' + 'name' + '}', @name.to_s)

      # query parameters
      query_params = {}
      query_params[:method] = @method unless @method.nil?
      query_params[:threshold] = @threshold unless @threshold.nil?
      query_params[:includeLabel] = @include_label unless @include_label.nil?
      query_params[:includeScore] = @include_score unless @include_score.nil?
      query_params[:allowedLabels] = @allowed_labels unless @allowed_labels.nil?
      query_params[:blockedLabels] = @blocked_labels unless @blocked_labels.nil?
      query_params[:color] = @color unless @color.nil?
      query_params[:folder] = @folder unless @folder.nil?
      query_params[:storage] = @storage unless @storage.nil?

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
