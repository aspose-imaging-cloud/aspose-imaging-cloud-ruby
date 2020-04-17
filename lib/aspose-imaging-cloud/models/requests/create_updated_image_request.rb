#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="create_updated_image_request.rb">
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
  # Request model for create_updated_image operation.
  class CreateUpdatedImageRequest < ImagingRequest

    # Perform scaling, cropping and flipping of an image in a single request. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [File] image_data Input image
    # @param [Integer] new_width New width of the scaled image.
    # @param [Integer] new_height New height of the scaled image.
    # @param [Integer] x X position of start point for cropping rectangle.
    # @param [Integer] y Y position of start point for cropping rectangle.
    # @param [Integer] rect_width Width of cropping rectangle.
    # @param [Integer] rect_height Height of cropping rectangle.
    # @param [String] rotate_flip_method RotateFlip method (Rotate180FlipNone, Rotate180FlipX, Rotate180FlipXY, Rotate180FlipY, Rotate270FlipNone, Rotate270FlipX, Rotate270FlipXY, Rotate270FlipY, Rotate90FlipNone, Rotate90FlipX, Rotate90FlipXY, Rotate90FlipY, RotateNoneFlipNone, RotateNoneFlipX, RotateNoneFlipXY, RotateNoneFlipY). Default is RotateNoneFlipNone.
    # @param [String] format Resulting image format. Please, refer to https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
    # @param [String] out_path Path to updated file (if this is empty, response contains streamed image).
    # @param [String] storage Your Aspose Cloud Storage name.
    def initialize(image_data, new_width, new_height, x, y, rect_width, rect_height, rotate_flip_method, format = nil, out_path = nil, storage = nil)
      @image_data = image_data
      @new_width = new_width
      @new_height = new_height
      @x = x
      @y = y
      @rect_width = rect_width
      @rect_height = rect_height
      @rotate_flip_method = rotate_flip_method
      @format = format
      @out_path = out_path
      @storage = storage
    end

    def to_http_info(config)
      # verify the required parameter 'image_data' is set
      if config.client_side_validation && @image_data.nil?
        raise ArgumentError, "Missing the required parameter 'image_data' when calling ImagingApi.create_updated_image"
      end

      # verify the required parameter 'new_width' is set
      if config.client_side_validation && @new_width.nil?
        raise ArgumentError, "Missing the required parameter 'new_width' when calling ImagingApi.create_updated_image"
      end

      # verify the required parameter 'new_height' is set
      if config.client_side_validation && @new_height.nil?
        raise ArgumentError, "Missing the required parameter 'new_height' when calling ImagingApi.create_updated_image"
      end

      # verify the required parameter 'x' is set
      if config.client_side_validation && @x.nil?
        raise ArgumentError, "Missing the required parameter 'x' when calling ImagingApi.create_updated_image"
      end

      # verify the required parameter 'y' is set
      if config.client_side_validation && @y.nil?
        raise ArgumentError, "Missing the required parameter 'y' when calling ImagingApi.create_updated_image"
      end

      # verify the required parameter 'rect_width' is set
      if config.client_side_validation && @rect_width.nil?
        raise ArgumentError, "Missing the required parameter 'rect_width' when calling ImagingApi.create_updated_image"
      end

      # verify the required parameter 'rect_height' is set
      if config.client_side_validation && @rect_height.nil?
        raise ArgumentError, "Missing the required parameter 'rect_height' when calling ImagingApi.create_updated_image"
      end

      # verify the required parameter 'rotate_flip_method' is set
      if config.client_side_validation && @rotate_flip_method.nil?
        raise ArgumentError, "Missing the required parameter 'rotate_flip_method' when calling ImagingApi.create_updated_image"
      end

      # resource path
      local_var_path = '/imaging/updateImage'

      # query parameters
      query_params = {}
      query_params[:newWidth] = @new_width
      query_params[:newHeight] = @new_height
      query_params[:x] = @x
      query_params[:y] = @y
      query_params[:rectWidth] = @rect_width
      query_params[:rectHeight] = @rect_height
      query_params[:rotateFlipMethod] = @rotate_flip_method
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
