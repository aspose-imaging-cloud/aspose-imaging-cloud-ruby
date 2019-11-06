require 'rake/testtask'
require 'ci/reporter/rake/test_unit'

task default: %i(test)
task :testunit => 'ci:setup:testunit'

namespace :ci do
  task :ai => ['ci:setup:testunit', 'ai']
  task :file => ['ci:setup:testunit', 'file']
  task :folder => ['ci:setup:testunit', 'folder']
  task :storage => ['ci:setup:testunit', 'storage']
  task :bmp => ['ci:setup:testunit', 'bmp']
  task :crop => ['ci:setup:testunit', 'crop']
  task :emf => ['ci:setup:testunit', 'emf']
  task :examples => ['ci:setup:testunit', 'examples']
  task :tiff => ['ci:setup:testunit', 'tiff']
  task :gif => ['ci:setup:testunit', 'gif']
  task :jpeg2000 => ['ci:setup:testunit', 'jpeg2000']
  task :jpg => ['ci:setup:testunit', 'jpg']
  task :psd => ['ci:setup:testunit', 'psd']
  task :resize => ['ci:setup:testunit', 'resize']
  task :rotate_flip => ['ci:setup:testunit', 'rotate_flip']
  task :save_as => ['ci:setup:testunit', 'save_as']
  task :update => ['ci:setup:testunit', 'update']
  task :webp => ['ci:setup:testunit', 'webp']
  task :wmf => ['ci:setup:testunit', 'wmf']
  task :imaging => ['ci:setup:testunit', 'imaging']
  task :v3 => ['ci:setup:testunit', 'v3']
  task :all => ['ci:setup:testunit', 'all']
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

Rake::TestTask.new('tiff') do |t|
  t.test_files = %w(test/api/tc_tiff_api.rb test/api/tc_frames_get_api.rb test/api/tc_frames_post_api.rb)
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