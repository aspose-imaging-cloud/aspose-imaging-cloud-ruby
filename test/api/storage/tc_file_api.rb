# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_file_api.rb">
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
require_relative './storage_api_tester'

module AsposeImagingCloudTests
  class TestFileApi < StorageApiTester
    #  Specific file API tests for Storage

    def test_copy_download_file
      folder = temp_folder + '/Storage'
      file = 'Storage.txt'
      begin
        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end

        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists)

        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((original_data_folder + '/') + file, (folder + '/') + file, test_storage, test_storage))
        exists_response = imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new((folder + '/') + file, test_storage))
        assert_not_nil(exists_response)
        assert(!exists_response.is_folder)
        assert(exists_response.exists)

        original_file_info = imaging_api.get_files_list(AsposeImagingCloud::GetFilesListRequest.new(original_data_folder, test_storage)).value.find { |x| x.name == file }
        copied_file_info = imaging_api.get_files_list(AsposeImagingCloud::GetFilesListRequest.new(folder, test_storage)).value.find { |x| x.name == file }

        assert_equal(original_file_info.size, copied_file_info.size)

        original_file = imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new((original_data_folder + '/') + file, test_storage))
        copied_file = imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new((folder + '/') + file, test_storage))
        open(original_file, 'r') do |original_reader|
          open(copied_file, 'r') do |copied_reader|
            original_string = original_reader.read
            copied_string = copied_reader.read
            assert_equal(original_string.size, copied_string.size)
            assert_equal(original_string.size, original_file_info.size)
            assert_equal(original_string, copied_string)
            assert_equal(original_string, original_file_info.path.chomp('/').reverse.chomp('/').reverse)
            assert_equal(original_string.gsub(original_data_folder, folder), copied_file_info.path.chomp('/').reverse.chomp('/').reverse)
          end
        end
      ensure
        imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new((folder + '/') + file, test_storage))
        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new((folder + '/') + file, test_storage)).exists)

        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end

        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists)
      end
    end

    def test_file_versions_copy
      return if imaging_api.api_client.config.on_premise

      folder = temp_folder + '/Storage'
      file1 = 'Storage.txt'
      file2 = 'Folder1/Folder1.txt'

      begin
        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end

        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists)

        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((original_data_folder + '/') + file1, (folder + '/') + file1, test_storage, test_storage))
        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((original_data_folder + '/') + file2, (folder + '/') + file1, test_storage, test_storage))
        versions = imaging_api.get_file_versions(AsposeImagingCloud::GetFileVersionsRequest.new((folder + '/') + file1, test_storage)).value
        recent_version = versions.find(&:is_latest)
        old_version = versions.find(&:is_latest)

        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((folder + '/') + file1, ((folder + '/') + file1) + '.recent', test_storage, test_storage, recent_version.version_id))
        copied_versions = imaging_api.get_file_versions(AsposeImagingCloud::GetFileVersionsRequest.new(((folder + '/') + file1) + '.recent', test_storage)).value
        assert_equal(1, copied_versions.size)
        assert(copied_versions[0].is_latest)
        assert_equal(recent_version.size, copied_versions[0].size)

        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((folder + '/') + file1, ((folder + '/') + file1) + '.old', test_storage, test_storage, old_version.version_id))
        copied_versions = imaging_api.get_file_versions(AsposeImagingCloud::GetFileVersionsRequest.new(((folder + '/') + file1) + '.old', test_storage)).value
        assert_equal(1, copied_versions.size)
        assert(copied_versions[0].is_latest)
        assert_equal(old_version.size, copied_versions[0].size)
      ensure
        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end
      end
    end

    def test_file_versions_create
      return if imaging_api.api_client.config.on_premise

      folder = temp_folder + '/Storage'
      file1 = 'Storage.txt'
      file2 = 'Folder1/Folder1.txt'

      file1_size = (imaging_api.get_files_list(AsposeImagingCloud::GetFilesListRequest.new(original_data_folder, test_storage)).value.find { |x| x.name == file1 }).size
      file2_size = (imaging_api.get_files_list(AsposeImagingCloud::GetFilesListRequest.new(original_data_folder + '/Folder1', test_storage)).value.find { |x| x.name == 'Folder1.txt' }).size

      begin
        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end

        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists)
        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((original_data_folder + '/') + file1, (folder + '/') + file1, test_storage, test_storage))
        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((original_data_folder + '/') + file2, (folder + '/') + file1, test_storage, test_storage))
        versions = imaging_api.get_file_versions(AsposeImagingCloud::GetFileVersionsRequest.new((folder + '/') + file1, test_storage)).value
        assert_equal(2, versions.size)
        recent_version_size = (versions.find { |x| x.is_latest }).size
        old_version_size = (versions.find { |x| !x.is_latest }).size
        assert_not_equal(recent_version_size, old_version_size)
        assert_equal(old_version_size, file1_size)
        assert_equal(recent_version_size, file2_size)
      ensure
        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end
      end
    end

    def test_file_versions_delete
      return if imaging_api.api_client.config.on_premise

      folder = temp_folder + '/Storage'
      file1 = 'Storage.txt'
      file2 = 'Folder1/Folder1.txt'

      begin
        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end

        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists)

        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((original_data_folder + '/') + file1, (folder + '/') + file1, test_storage, test_storage))
        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((original_data_folder + '/') + file2, (folder + '/') + file1, test_storage, test_storage))
        versions = imaging_api.get_file_versions(AsposeImagingCloud::GetFileVersionsRequest.new((folder + '/') + file1, test_storage)).value
        recent_version = versions.find(&:is_latest)
        old_version = versions.find { |x| !x.is_latest }
        assert(imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new((folder + '/') + file1, test_storage, recent_version.version_id)).exists)
        assert(imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new((folder + '/') + file1, test_storage, old_version.version_id)).exists)

        imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new((folder + '/') + file1, test_storage, recent_version.version_id))
        versions = imaging_api.get_file_versions(AsposeImagingCloud::GetFileVersionsRequest.new((folder + '/') + file1, test_storage)).value
        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new((folder + '/') + file1, test_storage, recent_version.version_id)).exists)
        assert(imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new((folder + '/') + file1, test_storage, old_version.version_id)).exists)
        assert_equal(1, versions.size)
        assert_equal(old_version.size, versions[0].size)

        imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new((folder + '/') + file1, test_storage, old_version.version_id))
        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new((folder + '/') + file1, test_storage)).exists)
      ensure
        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end
      end
    end

    def test_file_versions_download
      return if imaging_api.api_client.config.on_premise

      folder = temp_folder + '/Storage'
      file1 = 'Storage.txt'
      file2 = 'Folder1/Folder1.txt'

      begin
        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end

        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists)
        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((original_data_folder + '/') + file1, (folder + '/') + file1, test_storage, test_storage))
        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((original_data_folder + '/') + file2, (folder + '/') + file1, test_storage, test_storage))
        versions = imaging_api.get_file_versions(AsposeImagingCloud::GetFileVersionsRequest.new((folder + '/') + file1, test_storage)).value
        recent_version = versions.find(&:is_latest)
        old_version = versions.find { |x| !x.is_latest }
        open(imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new((folder + '/') + file1, test_storage, old_version.version_id)), 'r') do |old_file|
          assert_equal(old_version.size, old_file.read.size)
        end
        open(imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new((folder + '/') + file1, test_storage, recent_version.version_id)), 'r') do |old_file|
          assert_equal(recent_version.size, old_file.read.size)
        end
      ensure
        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end
      end
    end

    def test_file_versions_move
      return if imaging_api.api_client.config.on_premise

      folder = temp_folder + '/Storage'
      file1 = 'Storage.txt'
      file2 = 'Folder1/Folder1.txt'

      begin
        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end

        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists)

        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((original_data_folder + '/') + file1, (folder + '/') + file1, test_storage, test_storage))
        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((original_data_folder + '/') + file2, (folder + '/') + file1, test_storage, test_storage))
        versions = imaging_api.get_file_versions(AsposeImagingCloud::GetFileVersionsRequest.new((folder + '/') + file1, test_storage)).value
        recent_version = versions.find(&:is_latest)
        imaging_api.move_file(AsposeImagingCloud::MoveFileRequest.new((folder + '/') + file1, ((folder + '/') + file1) + '.recent', test_storage, test_storage, recent_version.version_id))
        copied_versions = imaging_api.get_file_versions(AsposeImagingCloud::GetFileVersionsRequest.new(((folder + '/') + file1) + '.recent', test_storage)).value
        assert_equal(1, copied_versions.size)
        assert(copied_versions[0].is_latest)
        assert_equal(recent_version.size, copied_versions[0].size)

        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((original_data_folder + '/') + file1, (folder + '/') + file1, test_storage, test_storage))
        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((original_data_folder + '/') + file2, (folder + '/') + file1, test_storage, test_storage))
        versions = imaging_api.get_file_versions(AsposeImagingCloud::GetFileVersionsRequest.new((folder + '/') + file1, test_storage)).value
        old_version = versions.find { |x| !x.is_latest }
        imaging_api.move_file(AsposeImagingCloud::MoveFileRequest.new((folder + '/') + file1, ((folder + '/') + file1) + '.old', test_storage, test_storage, old_version.version_id))
        copied_versions = imaging_api.get_file_versions(AsposeImagingCloud::GetFileVersionsRequest.new(((folder + '/') + file1) + '.old', test_storage)).value
        assert_equal(1, copied_versions.size)
        assert(copied_versions[0].is_latest)
        assert_equal(old_version.size, copied_versions[0].size)
      ensure
        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end
      end
    end

    def test_move_file
      folder = temp_folder + '/Storage'
      file = 'Storage.txt'
      begin
        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end

        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists)

        imaging_api.copy_file(AsposeImagingCloud::CopyFileRequest.new((original_data_folder + '/') + file, ((folder + '/') + file) + '.copied', test_storage, test_storage))

        exist_response = imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(((folder + '/') + file) + '.copied', test_storage))
        assert_not_nil(exist_response)
        assert(!exist_response.is_folder)
        assert(exist_response.exists)

        imaging_api.move_file(AsposeImagingCloud::MoveFileRequest.new(((folder + '/') + file) + '.copied', (folder + '/') + file, test_storage, test_storage))
        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(((folder + '/') + file) + '.copied', test_storage)).exists)

        exist_response = imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new((folder + '/') + file, test_storage))
        assert_not_nil(exist_response)
        assert(!exist_response.is_folder)
        assert(exist_response.exists)

        original_file_info = imaging_api.get_files_list(AsposeImagingCloud::GetFilesListRequest.new(original_data_folder, test_storage)).value.find { |x| x.name == file }
        moved_file_info = imaging_api.get_files_list(AsposeImagingCloud::GetFilesListRequest.new(folder, test_storage)).value.find { |x| x.name == file }
        assert_equal(original_file_info.size, moved_file_info.size)

        open(imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new((original_data_folder + '/') + file, test_storage)), 'r') do |original_file|
          open(imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new((folder + '/') + file, test_storage)), 'r') do |moved_file|
            original_string = original_file.read
            moved_string = moved_file.read
            assert_equal(original_string.size, moved_string.size)
            assert_equal(original_string.size, original_file_info.size)
            assert_equal(original_string, moved_string)
            assert_equal(original_string, original_file_info.path.chomp('/').reverse.chomp('/').reverse)
            assert_equal(original_string.gsub(original_data_folder, folder), moved_file_info.path.chomp('/').reverse.chomp('/').reverse)
          end
        end
      ensure
        imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new((folder + '/') + file, test_storage))
        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new((folder + '/') + file, test_storage)).exists)

        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end

        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists)
      end
    end

    def test_upload_file
      folder = temp_folder + '/Storage'
      file = 'Storage.txt'

      begin
        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end

        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists)

        original_file = imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new((original_data_folder + '/') + file, test_storage))
        result = imaging_api.upload_file(AsposeImagingCloud::UploadFileRequest.new((folder + '/') + file, original_file, test_storage))
        assert_not_nil(result)
        assert(!result.errors || result.errors.empty?)
        assert_not_nil(result.uploaded)
        assert_equal(1, result.uploaded.size)
        assert_equal(file, result.uploaded[0])

        exist_response = imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new((folder + '/') + file, test_storage))
        assert_not_nil(exist_response)
        assert(!exist_response.is_folder)
        assert(exist_response.exists)

        original_file_info = imaging_api.get_files_list(AsposeImagingCloud::GetFilesListRequest.new(original_data_folder, test_storage)).value.find { |x| x.name == file }
        uploaded_file_info = imaging_api.get_files_list(AsposeImagingCloud::GetFilesListRequest.new(folder, test_storage)).value.find { |x| x.name == file }
        assert_equal(original_file_info.size, uploaded_file_info.size)
        original_file = imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new((original_data_folder + '/') + file, test_storage))
        uploaded_file = imaging_api.download_file(AsposeImagingCloud::DownloadFileRequest.new((folder + '/') + file, test_storage))

        open(original_file, 'r') do |original_reader|
          open(uploaded_file, 'r') do |uploaded_reader|
            original_string = original_reader.read
            copied_string = uploaded_reader.read
            assert_equal(original_string.size, copied_string.size)
            assert_equal(original_string.size, original_file_info.size)
            assert_equal(original_string, copied_string)
            assert_equal(original_string, original_file_info.path.chomp('/').reverse.chomp('/'))
            assert_equal(original_string.gsub(original_data_folder, folder), uploaded_file_info.path.chomp('/').reverse.chomp('/'))
          end
        end
      ensure
        imaging_api.delete_file(AsposeImagingCloud::DeleteFileRequest.new((folder + '/') + file, test_storage))
        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new((folder + '/') + file, test_storage)).exists)

        if imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists
          imaging_api.delete_folder(AsposeImagingCloud::DeleteFolderRequest.new(folder, test_storage, true))
        end

        assert(!imaging_api.object_exists(AsposeImagingCloud::ObjectExistsRequest.new(folder, test_storage)).exists)
      end
    end
  end
end
