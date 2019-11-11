#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_examples.rb">
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


require_relative './imaging_api_tester'

module AsposeImagingCloudTests
  class TestExamplesApi < ImagingApiTester
    # Tests that correspond with examples code

    def test_save_as_from_storage_example
      # Saves as from storage example test

      config = imaging_api.api_client.config
      imaging_api = AsposeImagingCloud::ImagingApi.new(config.api_key[:api_key], config.api_key[:app_sid], config.host, config.api_version)

      begin
        # upload local image to storage

        result = imaging_api.upload_file(AsposeImagingCloud::UploadFileRequest.new('ExampleFolderRuby/inputImage.png', File.new(File.join(local_test_folder, 'test.png'), "r"), test_storage))

        # inspect result.Errors list if there were any
        # inspect result.Uploaded list for uploaded file names

        # convert image from storage to JPEG
        converted_image = File.open(imaging_api.save_image_as(AsposeImagingCloud::SaveImageAsRequest.new('inputImage.png', 'jpg', 'ExampleFolderRuby', test_storage)), 'rb')
        # process resulting image
        # for example, save it to storage

        result = imaging_api.upload_file(AsposeImagingCloud::UploadFileRequest.new('ExampleFolderRuby/resultImage.jpg', converted_image, test_storage))

          # inspect result.Errors list if there were any
          # inspect result.Uploaded list for uploaded file names

      ensure
        # remove files from storage
        imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new('ExampleFolderRuby/inputImage.png', test_storage))
        imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new('ExampleFolderRuby/resultImage.jpg',test_storage))
      end
    end

    def test_save_as_from_stream_example
      # Saves as from stream example

      config = imaging_api.api_client.config
      imaging_api = AsposeImagingCloud::ImagingApi.new(config.api_key[:api_key], config.api_key[:app_sid], config.host, config.api_version)
      remote_result_image = 'ExampleFolderRuby' + '/' + 'resultImage.jpg'

      begin
        # get the local image stream
        local_input_image = File.join(local_test_folder, 'test.png')
        # convert image from request stream to JPEG and save it to storage
        # please, use outPath parameter for saving the result to storage
        imaging_api.create_saved_image_as(AsposeImagingCloud::CreateSavedImageAsRequest.new(File.open(local_input_image), 'jpg', remote_result_image, test_storage))

        # download saved image from storage
        saved_file = imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new(remote_result_image, test_storage))
        # process resulting image from storage

        # convert image from request stream to JPEG and read it from
        # resulting stream
        image_stream = imaging_api.create_saved_image_as(AsposeImagingCloud::CreateSavedImageAsRequest.new(File.open(local_input_image), 'jpg', nil, test_storage))
          # process resulting image from response stream
      ensure
        imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new(remote_result_image, test_storage))
      end
    end
  end
end