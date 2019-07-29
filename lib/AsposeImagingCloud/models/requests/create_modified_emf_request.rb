#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="create_modified_emf_request.rb">
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
  # Request model for create_modified_emf operation.
  class CreateModifiedEmfRequest < ImagingRequest

    # Process existing EMF imaging using given parameters. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [File] image_data Input image
    # @param [String] bk_color Color of the background.
    # @param [Integer] page_width Width of the page.
    # @param [Integer] page_height Height of the page.
    # @param [Integer] border_x Border width.
    # @param [Integer] border_y Border height.
    # @param [BOOLEAN] from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @param [String] out_path Path to updated file (if this is empty, response contains streamed image).
    # @param [String] storage Your Aspose Cloud Storage name.
    # @param [String] format Export format (PNG is the default one). Please, refer to the export table from https://docs.aspose.cloud/display/imagingcloud/Supported+File+Formats#SupportedFileFormats-CommonOperationsFormatSupportMap for possible use-cases.
    def initialize(image_data, bk_color, page_width, page_height, border_x, border_y, from_scratch = nil, out_path = nil, storage = nil, format = nil)
      @image_data = image_data
      @bk_color = bk_color
      @page_width = page_width
      @page_height = page_height
      @border_x = border_x
      @border_y = border_y
      @from_scratch = from_scratch
      @out_path = out_path
      @storage = storage
      @format = format
    end

    def to_http_info(config)
      # verify the required parameter 'image_data' is set
      if config.client_side_validation && @image_data.nil?
        raise ArgumentError, "Missing the required parameter 'image_data' when calling ImagingApi.create_modified_emf"
      end

      # verify the required parameter 'bk_color' is set
      if config.client_side_validation && @bk_color.nil?
        raise ArgumentError, "Missing the required parameter 'bk_color' when calling ImagingApi.create_modified_emf"
      end

      # verify the required parameter 'page_width' is set
      if config.client_side_validation && @page_width.nil?
        raise ArgumentError, "Missing the required parameter 'page_width' when calling ImagingApi.create_modified_emf"
      end

      # verify the required parameter 'page_height' is set
      if config.client_side_validation && @page_height.nil?
        raise ArgumentError, "Missing the required parameter 'page_height' when calling ImagingApi.create_modified_emf"
      end

      # verify the required parameter 'border_x' is set
      if config.client_side_validation && @border_x.nil?
        raise ArgumentError, "Missing the required parameter 'border_x' when calling ImagingApi.create_modified_emf"
      end

      # verify the required parameter 'border_y' is set
      if config.client_side_validation && @border_y.nil?
        raise ArgumentError, "Missing the required parameter 'border_y' when calling ImagingApi.create_modified_emf"
      end

      # resource path
      local_var_path = '/imaging/emf'

      # query parameters
      query_params = {}
      query_params[:bkColor] = @bk_color
      query_params[:pageWidth] = @page_width
      query_params[:pageHeight] = @page_height
      query_params[:borderX] = @border_x
      query_params[:borderY] = @border_y
      query_params[:fromScratch] = @from_scratch unless @from_scratch.nil?
      query_params[:outPath] = @out_path unless @out_path.nil?
      query_params[:storage] = @storage unless @storage.nil?
      query_params[:format] = @format unless @format.nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params['imageData'] = @image_data

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
