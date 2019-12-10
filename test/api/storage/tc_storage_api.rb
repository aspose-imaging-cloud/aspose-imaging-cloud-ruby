#  ----------------------------------------------------------------------------
#  <copyright company="Aspose" file="tc_storage_api.rb">
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
  class TestStorageApi < StorageApiTester
    # Specific Storage API tests

    # omitted due to IMAGINGCLOUD-292
    # def test_get_disk_storage
    #   begin
    #     disk_usage = self.imaging_api.get_disc_usage(
    #         AsposeImagingCloud::GetDiscUsageRequest.new(self.test_storage))
    #     assert_equal(disk_usage.used_size, disk_usage.total_size)
    #   rescue ApiError > ex
    #     assert_equal(501, ex.code)
    #   end
    # end

    def test_storage_exists
      storage_exists = self.imaging_api.storage_exists(
          AsposeImagingCloud::StorageExistsRequest.new(self.test_storage))
      assert_true(storage_exists.exists)
    end

    def test_storage_does_not_exist
      storage_exists = self.imaging_api.storage_exists(
          AsposeImagingCloud::StorageExistsRequest.new('NonExistingStorage'))
      assert_false(storage_exists.exists)
    end
  end
end
