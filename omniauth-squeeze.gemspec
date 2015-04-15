# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-squeeze/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-squeeze"
  s.version     = OmniAuth::Squeeze::VERSION
  s.authors     = ["Alex Chumak"]
  s.email       = ["alex.chumak@gmail.com"]
  s.homepage    = "https://github.com/alexchumak/omniauth-squeeze"
  s.summary     = %q{OmniAuth strategy for squeezeCMM}
  s.description = %q{OmniAuth strategy for squeezeCMM}
  s.license     = "MIT"

  s.rubyforge_project = "omniauth-squeeze"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'multi_json', '~> 1.3'
  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 3.0'
  #s.add_development_dependency 'rack-test'
  #s.add_development_dependency 'simplecov'
  #s.add_development_dependency 'webmock'
end
