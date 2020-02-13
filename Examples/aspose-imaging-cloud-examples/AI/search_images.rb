# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="find_similar_images.rb">
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

require 'uri'
require_relative './imaging_ai_base'

module AsposeImagingCloudExamples
  # Search images
  class SearchImages < ImagingAiBase
    def initialize(imaging_api)
      super(imaging_api)
      print_header('Search images example:')
    end

    # Prepares the search context
    def prepare_search_context
      create_search_context
    end

    # Searches of images from a web source
    def search_image_from_web_source
      puts('Searches for images from a web source:')

      folder = ImagingAiBase::CLOUD_PATH # Input file is saved at the Examples folder in the storage
      storage = nil # We are using default Cloud Storage

      image_source_url = URI.encode('https://www.f1news.ru/interview/hamilton/140909.shtml')
      imaging_api.create_web_site_image_features(AsposeImagingCloud::CreateWebSiteImageFeaturesRequest.new(
          search_context_id, image_source_url, folder, storage))

      wait_idle(search_context_id)

      image_url = URI.encode('https://cdn.f1ne.ws/userfiles/hamilton/140909.jpg')
      response = imaging_api.get_image_features(AsposeImagingCloud::GetImageFeaturesRequest.new(
          search_context_id, image_url, folder, storage))
      
      puts('Image features found: ' + response.features_count.to_s)
      puts
    end
  end
end