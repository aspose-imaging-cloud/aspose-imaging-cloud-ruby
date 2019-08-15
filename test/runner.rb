# frozen_string_literal: true

require 'test/unit'
require 'test/unit/ui/console/testrunner'

require_relative './AsposeImagingCloudTests'

def add_suite_if_not_exists(suite_to_add, target_suite)
  target_suite << suite_to_add if target_suite.tests.all? { |existing_test| existing_test.name != suite_to_add.name }
end

test_categories = nil
test_categories = ENV['TestCategories'] unless ENV['TestCategories'].nil?

suites = {}

ai_suite = lambda { |suite|
  add_suite_if_not_exists(AsposeImagingCloudTests::TestCompareImages.suite, suite)
  add_suite_if_not_exists(AsposeImagingCloudTests::TestFindDuplicates.suite, suite)
  add_suite_if_not_exists(AsposeImagingCloudTests::TestFindImages.suite, suite)
  add_suite_if_not_exists(AsposeImagingCloudTests::TestSearchContext.suite, suite)
}
suites[:Ai] = ai_suite

file_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestFileApi.suite, suite) }
suites[:File] = file_suite

folder_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestFolderApi.suite, suite) }
suites[:Folder] = folder_suite

storage_suite = lambda { |suite|
  file_suite.call(suite)
  folder_suite.call(suite)
}
suites[:Storage] = storage_suite

bmp_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestBmpApi.suite, suite) }
suites[:Bmp] = bmp_suite

crop_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestCropApi.suite, suite) }
suites[:Crop] = crop_suite

emf_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestEmfApi.suite, suite) }
suites[:Emf] = emf_suite

examples_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestExamplesApi.suite, suite) }
suites[:Examples] = examples_suite

tiff_suite = lambda { |suite|
  add_suite_if_not_exists(AsposeImagingCloudTests::TestFramesGetApi.suite, suite)
  add_suite_if_not_exists(AsposeImagingCloudTests::TestJpgApi.suite, suite)
  add_suite_if_not_exists(AsposeImagingCloudTests::TestTiffApi.suite, suite)
}
suites[:Tiff] = tiff_suite

gif_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestGifApi.suite, suite) }
suites[:gif] = gif_suite

jpeg2000_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestJpeg2000Api.suite, suite) }
suites[:Jpeg2000] = jpeg2000_suite

jpg_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestJpgApi.suite, suite) }
suites[:Jpg] = jpg_suite

psd_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestPsdApi.suite, suite) }
suites[:Psd] = psd_suite

resize_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestResizeApi.suite, suite) }
suites[:Resize] = resize_suite

rotate_flip_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestRotateFlipApi.suite, suite) }
suites[:RotateFlip] = rotate_flip_suite

save_as_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestSaveAsApi.suite, suite) }
suites[:SaveAs] = save_as_suite

update_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestUpdateImageApi.suite, suite) }
suites[:Update] = update_suite

web_p_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestWebPApi.suite, suite) }
suites[:Webp] = web_p_suite

wmf_suite = ->(suite) { add_suite_if_not_exists(AsposeImagingCloudTests::TestWmfApi.suite, suite) }
suites[:Wmf] = wmf_suite

imaging_suite = lambda { |suite|
  bmp_suite.call(suite)
  crop_suite.call(suite)
  emf_suite.call(suite)
  examples_suite.call(suite)
  tiff_suite.call(suite)
  gif_suite.call(suite)
  jpeg2000_suite.call(suite)
  jpg_suite.call(suite)
  psd_suite.call(suite)
  resize_suite.call(suite)
  rotate_flip_suite.call(suite)
  save_as_suite.call(suite)
  update_suite.call(suite)
  web_p_suite.call(suite)
  wmf_suite.call(suite)
}
suites[:Imaging] = imaging_suite

v3_suite = lambda { |suite|
  ai_suite.call(suite)
  storage_suite.call(suite)
  imaging_suite.call(suite)
}
suites['v3.0'.to_sym] = v3_suite

suite = Test::Unit::TestSuite.new


if test_categories.nil?
  suites.each do |_, sub_suite|
    sub_suite.call(suite)
  end
else
  test_categories.split.each do |category|
    suites[category.to_sym].call(suite)
  end
end

Test::Unit::UI::Console::TestRunner.run(suite)
