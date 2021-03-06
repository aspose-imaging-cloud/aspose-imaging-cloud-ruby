#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="create_modified_web_p_request.rb">
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
  # Request model for create_modified_web_p operation.
  class CreateModifiedWebPRequest < ImagingRequest

    # Update parameters of WEBP image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [File] image_data Input image
    # @param [BOOLEAN] loss_less If WEBP should be in lossless format.
    # @param [Integer] quality Quality (0-100).
    # @param [Integer] anim_loop_count The animation loop count.
    # @param [String] anim_background_color Color of the animation background.
    # @param [BOOLEAN] from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @param [String] out_path Path to updated file (if this is empty, response contains streamed image).
    # @param [String] storage Your Aspose Cloud Storage name.
    def initialize(image_data, loss_less, quality, anim_loop_count, anim_background_color, from_scratch = nil, out_path = nil, storage = nil)
      @image_data = image_data
      @loss_less = loss_less
      @quality = quality
      @anim_loop_count = anim_loop_count
      @anim_background_color = anim_background_color
      @from_scratch = from_scratch
      @out_path = out_path
      @storage = storage
    end

    def to_http_info(config)
      # verify the required parameter 'image_data' is set
      if config.client_side_validation && @image_data.nil?
        raise ArgumentError, "Missing the required parameter 'image_data' when calling ImagingApi.create_modified_web_p"
      end

      # verify the required parameter 'loss_less' is set
      if config.client_side_validation && @loss_less.nil?
        raise ArgumentError, "Missing the required parameter 'loss_less' when calling ImagingApi.create_modified_web_p"
      end

      # verify the required parameter 'quality' is set
      if config.client_side_validation && @quality.nil?
        raise ArgumentError, "Missing the required parameter 'quality' when calling ImagingApi.create_modified_web_p"
      end

      # verify the required parameter 'anim_loop_count' is set
      if config.client_side_validation && @anim_loop_count.nil?
        raise ArgumentError, "Missing the required parameter 'anim_loop_count' when calling ImagingApi.create_modified_web_p"
      end

      # verify the required parameter 'anim_background_color' is set
      if config.client_side_validation && @anim_background_color.nil?
        raise ArgumentError, "Missing the required parameter 'anim_background_color' when calling ImagingApi.create_modified_web_p"
      end

      # resource path
      local_var_path = '/imaging/webp'

      # query parameters
      query_params = {}
      query_params[:lossLess] = @loss_less
      query_params[:quality] = @quality
      query_params[:animLoopCount] = @anim_loop_count
      query_params[:animBackgroundColor] = @anim_background_color
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
