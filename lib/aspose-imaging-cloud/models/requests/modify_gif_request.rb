#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="modify_gif_request.rb">
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
  # Request model for modify_gif operation.
  class ModifyGifRequest < ImagingRequest

    # Update parameters of existing GIF image.
    # @param [String] name Filename of image.
    # @param [Integer] background_color_index Index of the background color.
    # @param [Integer] color_resolution Color resolution.
    # @param [BOOLEAN] has_trailer Specifies if image has trailer.
    # @param [BOOLEAN] interlaced Specifies if image is interlaced.
    # @param [BOOLEAN] is_palette_sorted Specifies if palette is sorted.
    # @param [Integer] pixel_aspect_ratio Pixel aspect ratio.
    # @param [BOOLEAN] from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @param [String] folder Folder with image to process.
    # @param [String] storage Your Aspose Cloud Storage name.
    def initialize(name, background_color_index = nil, color_resolution = nil, has_trailer = nil, interlaced = nil, is_palette_sorted = nil, pixel_aspect_ratio = nil, from_scratch = nil, folder = nil, storage = nil)
      @name = name
      @background_color_index = background_color_index
      @color_resolution = color_resolution
      @has_trailer = has_trailer
      @interlaced = interlaced
      @is_palette_sorted = is_palette_sorted
      @pixel_aspect_ratio = pixel_aspect_ratio
      @from_scratch = from_scratch
      @folder = folder
      @storage = storage
    end

    def to_http_info(config)
      # verify the required parameter 'name' is set
      if config.client_side_validation && @name.nil?
        raise ArgumentError, "Missing the required parameter 'name' when calling ImagingApi.modify_gif"
      end

      # resource path
      local_var_path = '/imaging/{name}/gif'.sub('{' + 'name' + '}', @name.to_s)

      # query parameters
      query_params = {}
      query_params[:backgroundColorIndex] = @background_color_index unless @background_color_index.nil?
      query_params[:colorResolution] = @color_resolution unless @color_resolution.nil?
      query_params[:hasTrailer] = @has_trailer unless @has_trailer.nil?
      query_params[:interlaced] = @interlaced unless @interlaced.nil?
      query_params[:isPaletteSorted] = @is_palette_sorted unless @is_palette_sorted.nil?
      query_params[:pixelAspectRatio] = @pixel_aspect_ratio unless @pixel_aspect_ratio.nil?
      query_params[:fromScratch] = @from_scratch unless @from_scratch.nil?
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
