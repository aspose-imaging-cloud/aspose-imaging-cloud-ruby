require 'rake/testtask'
require 'ci/reporter/rake/test_unit'

task default: %i(test)
task :testunit => 'ci:setup:testunit'

namespace :ci do
  task :Ai => ['ci:setup:testunit', 'ai']
  task :File => ['ci:setup:testunit', 'file']
  task :Folder => ['ci:setup:testunit', 'folder']
  task :Storage => ['ci:setup:testunit', 'storage']
  task :Bmp => ['ci:setup:testunit', 'bmp']
  task :Crop => ['ci:setup:testunit', 'crop']
  task :Emf => ['ci:setup:testunit', 'emf']
  task :Examples => ['ci:setup:testunit', 'examples']
  task :FilterEffect => ['ci:setup:testunit', 'filter_effect']
  task :Tiff => ['ci:setup:testunit', 'tiff']
  task :Gif => ['ci:setup:testunit', 'gif']
  task :Jpeg2000 => ['ci:setup:testunit', 'jpeg2000']
  task :Jpg => ['ci:setup:testunit', 'jpg']
  task :Psd => ['ci:setup:testunit', 'psd']
  task :Resize => ['ci:setup:testunit', 'resize']
  task :RotateFlip => ['ci:setup:testunit', 'rotate_flip']
  task :SaveAs => ['ci:setup:testunit', 'save_as']
  task :Update => ['ci:setup:testunit', 'update']
  task :Webp => ['ci:setup:testunit', 'webp']
  task :Wmf => ['ci:setup:testunit', 'wmf']
  task :Imaging => ['ci:setup:testunit', 'imaging']
  task 'v3.0' => ['ci:setup:testunit', 'v3']
  task :All => ['ci:setup:testunit', 'all']
end

Rake::TestTask.new('test1') do |t|
  t.pattern = 'test/**/tc_*.rb'
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('ai') do |t|
  t.pattern = 'test/api/AI/tc_*.rb'
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('file') do |t|
  t.test_files = ['test/api/storage/tc_file_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('folder') do |t|
  t.test_files = ['test/api/storage/tc_folder_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('storage') do |t|
  t.test_files = ['test/api/storage/tc_storage_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('bmp') do |t|
  t.test_files = ['test/api/tc_bmp_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('crop') do |t|
  t.test_files = ['test/api/tc_crop_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('emf') do |t|
  t.test_files = ['test/api/tc_emf_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('examples') do |t|
  t.test_files = ['test/api/tc_examples.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('filter_effect') do |t|
  t.test_files = ['test/api/tc_filter_effect_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('tiff') do |t|
  t.test_files = ['test/api/tc_tiff_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('gif') do |t|
  t.test_files = ['test/api/tc_gif_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('jpeg2000') do |t|
  t.test_files = ['test/api/tc_jpeg2000_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('jpg') do |t|
  t.test_files = ['test/api/tc_jpg_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('psd') do |t|
  t.test_files = ['test/api/tc_psd_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('resize') do |t|
  t.test_files = ['test/api/tc_resize_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('rotate_flip') do |t|
  t.test_files = ['test/api/tc_rotate_flip_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('save_as') do |t|
  t.test_files = ['test/api/tc_save_as_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('update') do |t|
  t.test_files = ['test/api/tc_update_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('webp') do |t|
  t.test_files = ['test/api/tc_webp_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('wmf') do |t|
  t.test_files = ['test/api/tc_wmf_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('imaging') do |t|
  t.test_files = ['test/api/tc_*_api.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('v3') do |t|
  t.test_files = ['test/api/**/tc_*.rb']
  t.warning = false
  t.verbose = true
end

Rake::TestTask.new('all') do |t|
  t.test_files = ['test/api/**/tc_*.rb']
  t.warning = false
  t.verbose = true
end
