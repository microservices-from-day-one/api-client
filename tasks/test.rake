desc "Run all tests"
task :test => ["test:gem"]

Rake::TestTask.new("test:gem") do |t|
  t.libs << "test"
  t.test_files = FileList["test/**/*_test.rb"]
end
