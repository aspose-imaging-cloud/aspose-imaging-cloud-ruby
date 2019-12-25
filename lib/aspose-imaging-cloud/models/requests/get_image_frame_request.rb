#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="get_image_frame_request.rb">
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
  # Request model for get_image_frame operation.
  class GetImageFrameRequest < ImagingRequest

    # Get separate frame from existing TIFF image.
    # @param [String] name Filename of image.
    # @param [Integer] frame_id Number of a frame.
    # @param [Integer] new_width New width.
    # @param [Integer] new_height New height.
    # @param [Integer] x X position of start point for cropping rectangle.
    # @param [Integer] y Y position of start point for cropping rectangle.
    # @param [Integer] rect_width Width of cropping rectangle.
    # @param [Integer] rect_height Height of cropping rectangle.
    # @param [String] rotate_flip_method RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). Default is RotateNoneFlipNone.
    # @param [BOOLEAN] save_other_frames If result will include all other frames or just a specified frame.
    # @param [String] folder Folder with image to process.
    # @param [String] storage Your Aspose Cloud Storage name.
    def initialize(name, frame_id, new_width = nil, new_height = nil, x = nil, y = nil, rect_width = nil, rect_height = nil, rotate_flip_method = nil, save_other_frames = nil, folder = nil, storage = nil)
      @name = name
      @frame_id = frame_id
      @new_width = new_width
      @new_height = new_height
      @x = x
      @y = y
      @rect_width = rect_width
      @rect_height = rect_height
      @rotate_flip_method = rotate_flip_method
      @save_other_frames = save_other_frames
      @folder = folder
      @storage = storage
    end

    def to_http_info(config)
      # verify the required parameter 'name' is set
      if config.client_side_validation && @name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling ImagingApi.get_image_frame"
      end

      # verify the required parameter 'frame_id' is set
      if config.client_side_validation && @frame_id.nil?
        raise ArgumentError, "Missing the required parameter 'frame_id' when calling ImagingApi.get_image_frame"
      end

      # resource path
      local_var_path = '/imaging/{name}/frames/{frameId}'.sub('{' + 'name' + '}', @name.to_s).sub('{' + 'frameId' + '}', @frame_id.to_s)

      # query parameters
      query_params = {}
      query_params[:newWidth] = @new_width unless @new_width.nil?
      query_params[:newHeight] = @new_height unless @new_height.nil?
      query_params[:x] = @x unless @x.nil?
      query_params[:y] = @y unless @y.nil?
      query_params[:rectWidth] = @rect_width unless @rect_width.nil?
      query_params[:rectHeight] = @rect_height unless @rect_height.nil?
      query_params[:rotateFlipMethod] = @rotate_flip_method unless @rotate_flip_method.nil?
      query_params[:saveOtherFrames] = @save_other_frames unless @save_other_frames.nil?
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
