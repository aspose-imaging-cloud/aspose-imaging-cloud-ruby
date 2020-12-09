# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="api_tester.rb">
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

require 'test/unit'
require 'json'
require 'mimemagic'
require_relative '../lib/aspose-imaging-cloud'

module AsposeImagingCloudTests
  # Common tests operations
  class ApiTester < Test::Unit::TestCase
    # If any test failed
    attr_accessor :failed_any_test

    # The local test folder
    attr_accessor :local_test_folder

    # The temporary folder
    attr_accessor :temp_folder

    # The basic input test files
    attr_reader :basic_input_test_files

    # The multipage input test files
    attr_reader :multipage_input_test_files

    # Aspose.Imaging API
    attr_accessor :imaging_api

    # The cloud test folder prefix
    attr_reader :cloud_test_folder_prefix

    # The original test data folder
    attr_reader :original_data_folder

    # The default storage
    attr_reader :test_storage

    # Value indicating whether resulting images should be removed from cloud storage.
    # true if resulting images should be removed from cloud storage; otherwise, false.
    attr_reader :remove_result

    # The basic export formats
    attr_reader :basic_export_formats

    $extended_test = ENV["ExtendedTests"].to_s == 'true'

    # One time setup to initialize ImagingApi instance
    def setup
      @server_access_file = 'serverAccess.json'
      @api_version = 'v3.0'
      @base_url = 'http://api.aspose.cloud/'
      @default_storage = 'Imaging-CI'
      @cloud_test_folder_prefix = 'ImagingCloudTestRuby'
      @remove_result = false
      @local_test_folder = File.join(File.expand_path('..', __dir__), 'TestData/')
      @temp_folder = "#{cloud_test_folder_prefix}_#{ENV['BUILD_NUMBER'] || Etc.getlogin}"
      @original_data_folder = 'ImagingIntegrationTestData'
      @basic_export_formats = %w[bmp gif jpg png psd tiff webp]

      @test_storage = ENV['StorageName']
      unless @test_storage
        puts('Storage name is not set by environment variable. Using the default one.')
        @test_storage = @default_storage
      end

      create_api_instances

      if !failed_any_test && remove_result && imaging_api.object_exists(ObjectExistsRequest.new(temp_folder, test_storage)).exists
        imaging_api.delete_folder(DeleteFolderRequest.new(temp_folder, test_storage, true))
        imaging_api.create_folder(CreateFolderRequest.new(temp_folder, test_storage))
      end
    end

    def teardown
      if !failed_any_test && remove_result && imaging_api.object_exists(ObjectExistsRequest.new(temp_folder, test_storage)).exists
        imaging_api.delete_folder(DeleteFolderRequest.new(temp_folder, test_storage, true))
      end
    end

    def get_request_tester(test_method_name, parameters_line, input_file_name, request_invoker, properties_tester, folder, storage = nil)
      storage ||= default_storage

      request_tester(test_method_name, false, parameters_line, input_file_name, nil, -> { obtain_get_response(request_invoker) }, properties_tester, folder, storage)
    end

    def get_object_detection_request_tester(test_method_name, parameters_line, input_file_name, request_invoker, properties_tester, folder, storage = nil)
      storage ||= default_storage

      object_detection_request_tester(test_method_name, false, parameters_line, input_file_name, nil, -> { obtain_object_detection_get_response(request_invoker) }, properties_tester, folder, storage)
    end

    def post_request_tester(test_method_name, save_result_to_storage, parameters_line, input_file_name, result_file_name, request_invoker, properties_tester, folder, storage = nil)
      storage ||= default_storage

      request_tester(test_method_name, save_result_to_storage, parameters_line, input_file_name, result_file_name, -> { obtain_post_response(File.join(folder, input_file_name), save_result_to_storage ? File.join(folder, result_file_name) : nil, storage, request_invoker) }, properties_tester, folder, storage)
    end

    def post_object_detection_request_tester(test_method_name, save_result_to_storage, parameters_line, input_file_name, result_file_name, request_invoker, properties_tester, folder, storage = nil)
      storage ||= default_storage

      object_detection_request_tester(test_method_name, save_result_to_storage, parameters_line, input_file_name, result_file_name, -> { obtain_post_response(File.join(folder, input_file_name), save_result_to_storage ? File.join(folder, result_file_name) : nil, storage, request_invoker) }, properties_tester, folder, storage)
    end

    protected

    # The API version
    attr_reader :api_version

    def copy_input_file_to_test_folder(input_file_name, folder, storage)
      # Copies original input file to test folder in cloud
      unless check_input_file_exists(input_file_name)
        raise ArgumentError, "Input file #{input_file_name} doesn't exist in the specified storage folder: #{folder}. Please, upload it first."
      end

      if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(File.join(folder, input_file_name), storage)).exists
        return
      end

      imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new(File.join(original_data_folder, input_file_name), File.join(folder, input_file_name), storage, storage))
    end

    private

    # The input test files
    attr_accessor :input_test_files

    # The basic input test files
    attr_writer :basic_input_test_files

    # The multipage input test files
    attr_writer :multipage_input_test_files

    # The server access file
    attr_reader :server_access_file

    # The base URL
    attr_reader :base_url

    # The default storage
    attr_reader :default_storage

    attr_writer :test_storage

    def create_api_instances
      puts('Trying to obtain configuration from environment variables.')
      on_premise = ENV['OnPremise'].to_s == 'true'
      client_secret = on_premise ? nil : ENV['ClientSecret']
      client_id = on_premise ? nil : ENV['ClientId']
      base_url = ENV['ApiEndpoint']
      api_version = ENV['ApiVersion']

      if (!on_premise && (!client_secret || !client_id)) || !base_url || !api_version
        puts('Access data isn\'t set completely by environment variables. Filling unset data with default values.')
      end

      unless api_version
        api_version = self.api_version
        puts('Set default API version')
      end

      server_access_file_path = File.join(local_test_folder, server_access_file)
      if File.readable? server_access_file_path
        server_file_info = JSON.parse(File.read(server_access_file_path))

        if !client_secret && !on_premise
          client_secret = server_file_info['ClientSecret']
          puts('Set default Client Secret')
        end

        if !client_id && !on_premise
          client_id = server_file_info['ClientId']
          puts('Set default Client ID')
        end

        unless base_url
          base_url = server_file_info['BaseURL']
          puts('Set default Base URL')
        end
      elsif !on_premise
        raise ArgumentError, 'Please, specify valid access data (ClientSecret, ClientId, Base URL)'
      end

      puts("On premise: #{on_premise}")
      unless on_premise
        puts("Client Secret: #{client_secret}")
        puts("Client ID: #{client_id}")
      end
      puts("Storage: #{test_storage}")
      puts("Base URL: #{base_url}")
      puts("API version: #{api_version}")

      self.imaging_api = AsposeImagingCloud::ImagingApi.new(client_secret, client_id, base_url, api_version)

      self.input_test_files = imaging_api.get_files_list(AsposeImagingCloud::GetFilesListRequest.new(original_data_folder, test_storage)).value

      self.basic_input_test_files = input_test_files.reject { |file|  file.name.start_with? 'multipage_'}

      self.multipage_input_test_files = input_test_files.select { |file| file.name.start_with? 'multipage_'}
    end

    def request_tester(test_method_name, save_result_to_storage, parameters_line, input_file_name, result_file_name, invoke_request_action, properties_tester, folder, storage = nil)
      storage ||= default_storage

      puts(test_method_name.to_s)

      copy_input_file_to_test_folder(input_file_name, folder, storage)

      passed = false
      out_path = nil
      begin
        puts(parameters_line)

        if save_result_to_storage
          out_path = File.join(folder, result_file_name)

          if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(out_path, storage)).exists
            imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new(out_path, storage))
          end
        end

        result_properties = nil
        response = invoke_request_action.call
        if save_result_to_storage
          result_info = get_storage_file_info(folder, result_file_name, storage)

          unless result_info
            raise ArgumentError, "Result file #{result_file_name} doesn't exist in the specified storage folder: #{folder}. Result isn't present in the storage by an unknown reason."
          end
          unless result_file_name.end_with? '.pdf'
            result_properties = imaging_api.get_image_properties(AsposeImagingCloud::GetImagePropertiesRequest.new(result_file_name, folder, storage))
            assert_not_nil(result_properties)
          end
        elsif !MimeMagic.by_magic(response).to_s.end_with? 'pdf'
          result_properties = imaging_api.extract_image_properties(AsposeImagingCloud::ExtractImagePropertiesRequest.new(response))
          assert_not_nil(result_properties)
        end

        original_properties = imaging_api.get_image_properties(AsposeImagingCloud::GetImagePropertiesRequest.new(input_file_name, folder, storage))
        assert_not_nil(original_properties)

        if result_properties
          properties_tester.call(original_properties, result_properties, response)
        end

        passed = true
      rescue StandardError => e
        self.failed_any_test = true
        puts(e.to_s)
        raise
      ensure
        if passed && save_result_to_storage && remove_result && imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(out_path, storage)).exists
          imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new(out_path, storage))
          puts("Test passed: #{passed}")
          puts
        end
      end
    end

    def object_detection_request_tester(
        test_method_name,
        save_result_to_storage,
        parameters_line,
        input_file_name,
        result_file_name,
        invoke_request_action,
        response_tester,
        folder,
        storage = nil)
      storage ||= default_storage

      puts(test_method_name.to_s)

      copy_input_file_to_test_folder(input_file_name, folder, storage)

      passed = false
      out_path = nil
      begin
        puts(parameters_line)

        if save_result_to_storage
          out_path = File.join(folder, result_file_name)

          if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(out_path, storage)).exists
            imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new(out_path, storage))
          end
        end

        result_properties = nil
        response = invoke_request_action.call
        #if save_result_to_storage
        #  result_info = get_storage_file_info(folder, result_file_name, storage)
        #
        #  unless result_info
        #    raise ArgumentError, "Result file #{result_file_name} doesn't exist in the specified storage folder: #{folder}. Result isn't present in the storage by an unknown reason."
        #  end
        #  unless result_file_name.end_with? '.pdf'
        #    result_properties = imaging_api.get_image_properties(AsposeImagingCloud::GetImagePropertiesRequest.new(result_file_name, folder, storage))
        #    assert_not_nil(result_properties)
        #  end
        #elsif !MimeMagic.by_magic(response).to_s.end_with? 'pdf'
        #  result_properties = imaging_api.extract_image_properties(AsposeImagingCloud::ExtractImagePropertiesRequest.new(response))
        #  assert_not_nil(result_properties)
        #end

        #original_properties = imaging_api.get_image_properties(AsposeImagingCloud::GetImagePropertiesRequest.new(input_file_name, folder, storage))
        #assert_not_nil(original_properties)

        #if result_properties
          response_tester.call(response)
        #end

        passed = true
      rescue StandardError => e
        self.failed_any_test = true
        puts(e.to_s)
        raise
      ensure
        if passed && save_result_to_storage && remove_result && imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(out_path, storage)).exists
          imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new(out_path, storage))
          puts("Test passed: #{passed}")
          puts
        end
      end
    end

    def check_input_file_exists(input_file_name)
      input_test_files.any? { |storage_file_info| storage_file_info.name == input_file_name }
    end

    def get_storage_file_info(folder, file_name, storage)
      file_list_response = imaging_api.get_files_list(AsposeImagingCloud::GetFilesListRequest.new(folder, storage)).value

      file_list_response.each do |storage_file_info|
        return storage_file_info if storage_file_info.name == file_name
      end

      nil
    end

    def obtain_get_response(request_invoker)
      response = request_invoker.call

      response = File.open(response, 'rb') if response.is_a? ::File

      assert_not_nil(response)
      assert_operator response.size, :>, 0

      response
    end

    def obtain_object_detection_get_response(request_invoker)
      response = request_invoker.call

      response = File.open(response, 'rb') if response.is_a? ::File

      assert_not_nil(response)

      response
    end

    def obtain_post_response(input_path, out_path, storage, request_invoker)
      res = imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new(input_path, storage))

      response = request_invoker.call(res, out_path)

      return nil unless out_path.nil?

      response = File.open(response, 'rb') if response.is_a? ::File

      assert_not_nil(response)
      response
    end
  end
end
