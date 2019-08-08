# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="ai_api_tester.rb">
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

require_relative '../../api_tester'

module AsposeImagingCloudTests
  class AiApiTester < ApiTester
    attr_reader :search_context_id, :wait_timeout

    def setup
      super
      @search_context_id = create_search_context
      @wait_timeout = 5
      @cloud_test_folder_prefix = 'ImagingAICloudTestPython'
      @original_data_folder += '/AI'
      @temp_folder = "#{@cloud_test_folder_prefix}_#{ENV['BUILD_NUMBER'] || Etc.getlogin}"
    end

    def teardown
      super
      delete_image_search(@search_context_id) if @search_context_id
      imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(@temp_folder, @test_storage, true)) if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(@temp_folder, @test_storage)).exists
    end

    def self.run_test_with_logging(info, test_action_invoker)
      passed = false
      print(info)
      begin
        test_action_invoker.call
        passed = true
      rescue StandardError => e
        print(e.to_s)
        raise
      ensure
        print('Test passed: ' + passed.to_s)
      end
    end

    protected

    def get_storage_path(image_name, folder: nil)
      File.join(!folder.nil? ? folder : @original_data_folder, image_name)
    end

    def add_image_features_to_search_context(storage_source_path, is_folder: false)
      request = !is_folder.nil? ? AsposeImagingCloud::CreateImageFeaturesRequest.new(@search_context_id, images_folder: storage_source_path, storage: @test_storage) : AsposeImagingCloud::CreateImageFeaturesRequest.new(@search_context_id, image_id: storage_source_path, storage: @test_storage)
      imaging_api.create_image_features(request)
      wait_search_context_idle
    end

    def delete_image_search(search_context_id)
      imaging_api.delete_image_search(AsposeImagingCloud::DeleteImageSearchRequest.new(search_context_id, storage: @test_storage))
    end

    def wait_search_context_idle(max_time: nil)
      max_time ||= @wait_timeout * 60
      timeout = 10
      start_time = time.time
      while imaging_api.get_image_search_status(AsposeImagingCloud::GetImageSearchStatusRequest.new(@search_context_id, storage: @test_storage)).search_status != 'Idle' && (time.time - start_time < max_time)
        time.sleep(timeout)
      end
    end

    private

    def create_search_context
      imaging_api.create_image_search(AsposeImagingCloud::CreateImageSearchRequest.new(storage: @test_storage)).id
    end
  end
end
