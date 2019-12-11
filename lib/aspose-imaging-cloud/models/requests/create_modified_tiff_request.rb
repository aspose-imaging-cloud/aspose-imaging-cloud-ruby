#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="create_modified_tiff_request.rb">
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
  # Request model for create_modified_tiff operation.
  class CreateModifiedTiffRequest < ImagingRequest

    # Update parameters of TIFF image. Image data is passed as zero-indexed multipart/form-data content or as raw body stream.
    # @param [File] image_data Input image
    # @param [Integer] bit_depth Bit depth.
    # @param [String] compression Compression (none is default). Please, refer to https://apireference.aspose.com/net/imaging/aspose.imaging.fileformats.tiff.enums/tiffcompressions for all possible values.
    # @param [String] resolution_unit New resolution unit (none - the default one, inch or centimeter).
    # @param [Float] horizontal_resolution New horizontal resolution.
    # @param [Float] vertical_resolution New vertical resolution.
    # @param [BOOLEAN] from_scratch Specifies where additional parameters we do not support should be taken from. If this is true – they will be taken from default values for standard image, if it is false – they will be saved from current image. Default is false.
    # @param [String] out_path Path to updated file (if this is empty, response contains streamed image).
    # @param [String] storage Your Aspose Cloud Storage name.
    def initialize(image_data, bit_depth, compression = nil, resolution_unit = nil, horizontal_resolution = nil, vertical_resolution = nil, from_scratch = nil, out_path = nil, storage = nil)
      @image_data = image_data
      @bit_depth = bit_depth
      @compression = compression
      @resolution_unit = resolution_unit
      @horizontal_resolution = horizontal_resolution
      @vertical_resolution = vertical_resolution
      @from_scratch = from_scratch
      @out_path = out_path
      @storage = storage
    end

    def to_http_info(config)
      # verify the required parameter 'image_data' is set
      if config.client_side_validation && @image_data.nil?
        raise ArgumentError, "Missing the required parameter 'image_data' when calling ImagingApi.create_modified_tiff"
      end

      # verify the required parameter 'bit_depth' is set
      if config.client_side_validation && @bit_depth.nil?
        raise ArgumentError, "Missing the required parameter 'bit_depth' when calling ImagingApi.create_modified_tiff"
      end

      # resource path
      local_var_path = '/imaging/tiff'

      # query parameters
      query_params = {}
      query_params[:bitDepth] = @bit_depth
      query_params[:compression] = @compression unless @compression.nil?
      query_params[:resolutionUnit] = @resolution_unit unless @resolution_unit.nil?
      query_params[:horizontalResolution] = @horizontal_resolution unless @horizontal_resolution.nil?
      query_params[:verticalResolution] = @vertical_resolution unless @vertical_resolution.nil?
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
