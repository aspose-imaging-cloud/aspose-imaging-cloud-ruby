#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="create_modified_svg_request.rb">
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
  # Request model for create_modified_svg operation.
  class CreateModifiedSvgRequest < ImagingRequest

    # Update parameters of SVG image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [File] image_data Input image
    # @param [String] color_type Color type for SVG image. Only RGB is supported for now.
    # @param [BOOLEAN] text_as_shapes Whether text must be converted as shapes. true if all text is turned into SVG shapes in the convertion; otherwise, false
    # @param [Float] scale_x Scale X.
    # @param [Float] scale_y Scale Y.
    # @param [Integer] page_width Width of the page.
    # @param [Integer] page_height Height of the page.
    # @param [Integer] border_x Border width. Only 0 is supported for now.
    # @param [Integer] border_y Border height. Only 0 is supported for now.
    # @param [String] bk_color Background color (Default is white).
    # @param [BOOLEAN] from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @param [String] out_path Path to updated file (if this is empty, response contains streamed image).
    # @param [String] storage Your Aspose Cloud Storage name.
    # @param [String] format Export format (PNG is the default one). Please, refer to the export table from https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
    def initialize(image_data, color_type = nil, text_as_shapes = nil, scale_x = nil, scale_y = nil, page_width = nil, page_height = nil, border_x = nil, border_y = nil, bk_color = nil, from_scratch = nil, out_path = nil, storage = nil, format = nil)
      @image_data = image_data
      @color_type = color_type
      @text_as_shapes = text_as_shapes
      @scale_x = scale_x
      @scale_y = scale_y
      @page_width = page_width
      @page_height = page_height
      @border_x = border_x
      @border_y = border_y
      @bk_color = bk_color
      @from_scratch = from_scratch
      @out_path = out_path
      @storage = storage
      @format = format
    end

    def to_http_info(config)
      # verify the required parameter 'image_data' is set
      if config.client_side_validation && @image_data.nil?
        raise ArgumentError, "Missing the required parameter 'image_data' when calling ImagingApi.create_modified_svg"
      end

      # resource path
      local_var_path = '/imaging/svg'

      # query parameters
      query_params = {}
      query_params[:colorType] = @color_type unless @color_type.nil?
      query_params[:textAsShapes] = @text_as_shapes unless @text_as_shapes.nil?
      query_params[:scaleX] = @scale_x unless @scale_x.nil?
      query_params[:scaleY] = @scale_y unless @scale_y.nil?
      query_params[:pageWidth] = @page_width unless @page_width.nil?
      query_params[:pageHeight] = @page_height unless @page_height.nil?
      query_params[:borderX] = @border_x unless @border_x.nil?
      query_params[:borderY] = @border_y unless @border_y.nil?
      query_params[:bkColor] = @bk_color unless @bk_color.nil?
      query_params[:fromScratch] = @from_scratch unless @from_scratch.nil?
      query_params[:outPath] = @out_path unless @out_path.nil?
      query_params[:storage] = @storage unless @storage.nil?
      query_params[:format] = @format unless @format.nil?

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
