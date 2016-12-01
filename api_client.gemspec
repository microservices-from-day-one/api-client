# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "api_client/version"

Gem::Specification.new do |s|
  s.name        = "api_client"
  s.version     = ApiClient::VERSION
  s.authors     = ["Cloves Carneiro Jr"]
  s.email       = ["ccarneiroj@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{It's the thing that knows how to hit internal services.}
  s.description = %q{It's the thing that knows how to hit internal services.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_runtime_dependency "json_api_client", '~> 1.3'
  s.add_runtime_dependency "faraday", '~> 0.9.0'
  s.add_runtime_dependency "service_discovery", '~> 0'
end
