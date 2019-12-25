# frozen_string_literal: true

#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_folder_api.rb">
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
  class TestFolderApi < StorageApiTester
    # Specific folder API tests for Storage

    def test_create_folder
      folder = temp_folder + '/DummyFolder'

      begin
        if imaging_api.object_exists(
          AsposeImagingCloud::ObjectExistsRequest.new(
            folder, test_storage
          )
        ).exists
          imaging_api.delete_folder(
            AsposeImagingCloud::DeleteFolderRequest.new(
              folder, test_storage, true
            )
          )
        end

        assert_false(
          imaging_api.object_exists(
            AsposeImagingCloud::ObjectExistsRequest.new(
              folder, test_storage
            )
          ).exists
        )

        imaging_api.create_folder(
          AsposeImagingCloud::CreateFolderRequest.new(
            folder, test_storage
          )
        )
        assert_true(
          imaging_api.object_exists(
            AsposeImagingCloud::ObjectExistsRequest.new(
              folder, test_storage
            )
          ).exists
        )
      ensure
        if imaging_api.object_exists(
          AsposeImagingCloud::ObjectExistsRequest.new(
            folder, test_storage
          )
        ).exists
          imaging_api.delete_folder(
            AsposeImagingCloud::DeleteFolderRequest.new(
              folder, test_storage, true
            )
          )
        end

        assert_false(
          imaging_api.object_exists(
            AsposeImagingCloud::ObjectExistsRequest.new(
              folder, test_storage
            )
          ).exists
        )
      end
    end

    def test_copy_folder
      folder = temp_folder + '/Storage'

      begin
        if imaging_api.object_exists(
          AsposeImagingCloud::ObjectExistsRequest.new(
            folder, test_storage
          )
        ).exists
          imaging_api.delete_folder(
            AsposeImagingCloud::DeleteFolderRequest.new(
              folder, test_storage, true
            )
          )
        end

        assert_false(
          imaging_api.object_exists(
            AsposeImagingCloud::ObjectExistsRequest.new(
              folder, test_storage
            )
          ).exists
        )

        imaging_api.copy_folder(
          AsposeImagingCloud::CopyFolderRequest.new(
            original_data_folder,
            folder,
            test_storage,
            test_storage
          )
        )
        assert_true(
          imaging_api.object_exists(
            AsposeImagingCloud::ObjectExistsRequest.new(
              folder, test_storage
            )
          ).exists
        )

        original_files = imaging_api.get_files_list(
          AsposeImagingCloud::GetFilesListRequest.new(
            original_data_folder,
            test_storage
          )
        ).value
        copied_files = imaging_api.get_files_list(
          AsposeImagingCloud::GetFilesListRequest.new(folder, test_storage)
        ).value
        assert_operator original_files.length, :>, 0
        assert_operator copied_files.length, :>, 0
        assert_equal(original_files.length, copied_files.length)
        original_files.each do |original_file|
          assert_not_nil(copied_files.find { |copied_file| (copied_file.is_folder == original_file.is_folder) && (copied_file.size == original_file.size) && (copied_file.name == original_file.name) })
        end
      ensure
        if imaging_api.object_exists(
          AsposeImagingCloud::ObjectExistsRequest.new(
            folder, test_storage
          )
        ).exists
          imaging_api.delete_folder(
            AsposeImagingCloud::DeleteFolderRequest.new(
              folder, test_storage, true
            )
          )
        end

        assert_false(
          imaging_api.object_exists(
            AsposeImagingCloud::ObjectExistsRequest.new(
              folder, test_storage
            )
          ).exists
        )
      end
    end

    def test_move_folder
      tmp_folder = temp_folder + '/Temp'
      folder = temp_folder + '/Storage'

      begin
        if imaging_api.object_exists(
          AsposeImagingCloud::ObjectExistsRequest.new(
            folder, test_storage
          )
        ).exists
          imaging_api.delete_folder(
            AsposeImagingCloud::DeleteFolderRequest.new(
              folder, test_storage, true
            )
          )
        end

        assert_false(
          imaging_api.object_exists(
            AsposeImagingCloud::ObjectExistsRequest.new(
              folder, test_storage
            )
          ).exists
        )

        if imaging_api.object_exists(
          AsposeImagingCloud::ObjectExistsRequest.new(
            tmp_folder,
            test_storage
          )
        ).exists
          imaging_api.delete_folder(
            AsposeImagingCloud::DeleteFolderRequest.new(
              tmp_folder, test_storage, true
            )
          )
        end

        assert_false(
          imaging_api.object_exists(
            AsposeImagingCloud::ObjectExistsRequest.new(
              tmp_folder,
              test_storage
            )
          ).exists
        )

        imaging_api.copy_folder(
          AsposeImagingCloud::CopyFolderRequest.new(
            original_data_folder,
            tmp_folder,
            test_storage,
            test_storage
          )
        )
        assert_true(
          imaging_api.object_exists(
            AsposeImagingCloud::ObjectExistsRequest.new(
              tmp_folder,
              test_storage
            )
          ).exists
        )

        imaging_api.move_folder(
          AsposeImagingCloud::MoveFolderRequest.new(
            tmp_folder,
            folder,
            test_storage,
            test_storage
          )
        )
        assert_false(
          imaging_api.object_exists(
            AsposeImagingCloud::ObjectExistsRequest.new(
              tmp_folder,
              test_storage
            )
          ).exists
        )
        assert_true(
          imaging_api.object_exists(
            AsposeImagingCloud::ObjectExistsRequest.new(
              folder, test_storage
            )
          ).exists
        )

        original_files = imaging_api.get_files_list(
          AsposeImagingCloud::GetFilesListRequest.new(
            original_data_folder,
            test_storage
          )
        ).value
        copied_files = imaging_api.get_files_list(
          AsposeImagingCloud::GetFilesListRequest.new(folder, test_storage)
        ).value
        assert_operator original_files.length, :>, 0
        assert_operator copied_files.length, :>, 0
        assert_equal(original_files.length, copied_files.length)
        original_files.each do |original_file|
          assert_not_nil(copied_files.find { |copied_file| (copied_file.is_folder == original_file.is_folder) && (copied_file.size == original_file.size) && (copied_file.name == original_file.name) })
        end
      ensure
        if imaging_api.object_exists(
          AsposeImagingCloud::ObjectExistsRequest.new(
            folder, test_storage
          )
        ).exists
          imaging_api.delete_folder(
            AsposeImagingCloud::DeleteFolderRequest.new(
              folder, test_storage, true
            )
          )
        end

        assert_false(
          imaging_api.object_exists(
            AsposeImagingCloud::ObjectExistsRequest.new(
              folder, test_storage
            )
          ).exists
        )
      end
    end

    def test_files_list
      files = imaging_api.get_files_list(
        AsposeImagingCloud::GetFilesListRequest.new(
          original_data_folder,
          test_storage
        )
      ).value
      assert_equal(3, files.length)
      folder1 = files.find { |x| x.name == 'Folder1' }
      assert_not_nil(folder1)
      assert_true(folder1.is_folder)
      assert_true(folder1.path.chomp('/').end_with?(folder1.name))
      folder2 = files.find { |x| x.name == 'Folder2' }
      assert_not_nil(folder2)
      assert_true(folder2.is_folder)
      assert_true(folder2.path.chomp('/').end_with?(folder2.name))
      storage_file = files.find { |x| x.name == 'Storage.txt' }
      assert_not_nil(storage_file)
      assert_false(storage_file.is_folder)
      assert_true(storage_file.path.chomp(
        '/'
      ).end_with?(storage_file.name))
      assert_equal(storage_file.size, storage_file.path.chomp('/').reverse.chomp('/').length)

      files = imaging_api.get_files_list(
        AsposeImagingCloud::GetFilesListRequest.new(
          original_data_folder + '/' + folder1.name,
          test_storage
        )
      ).value
      assert_equal(1, files.length)
      folder1_file = files.find { |x| x.name == 'Folder1.txt' }
      assert_not_nil(folder1_file)
      assert_false(folder1_file.is_folder)
      assert_true(folder1_file.path.chomp(
        '/'
      ).end_with?(folder1_file.name))
      assert_equal(folder1_file.size, folder1_file.path.chomp('/').reverse.chomp('/').length)

      files = imaging_api.get_files_list(
        AsposeImagingCloud::GetFilesListRequest.new(
          original_data_folder + '/' + folder2.name,
          test_storage
        )
      ).value
      assert_equal(2, files.length)
      folder2_file = files.find { |x| x.name == 'Folder2.txt' }
      assert_not_nil(folder2_file)
      assert_false(folder2_file.is_folder)
      assert_true(folder2_file.path.chomp(
        '/'
      ).end_with?(folder2_file.name))
      assert_equal(folder2_file.size, folder2_file.path.chomp('/').reverse.chomp('/').length)
      folder3 = files.find { |x| x.name == 'Folder3' }
      assert_not_nil(folder3)
      assert_true(folder3.is_folder)
      assert_true(folder3.path.chomp('/').end_with?(folder3.name))

      files = imaging_api.get_files_list(
        AsposeImagingCloud::GetFilesListRequest.new(
          original_data_folder +
              '/' +
              folder2.name +
              '/' +
              folder3.name,
          test_storage
        )
      ).value
      assert_equal(1, files.length)
      folder3 = files.find { |x| x.name == 'Folder3.txt' }
      assert_not_nil(folder3)
      assert_false(folder3.is_folder)
      assert_true(folder3.path.chomp(
        '/'
      ).end_with?(folder3.name))
      assert_equal(folder3.size, folder3.path.chomp('/').reverse.chomp('/').length)
    end
  end
end
