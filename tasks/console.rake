desc "start a console with the gem loaded"
task :console do
  sh "irb -rubygems -I lib -r api_client.rb"
end
