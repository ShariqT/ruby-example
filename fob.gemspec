# coding: utf-8
$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require "fob/version"

Gem::Specification.new do |spec|
  spec.name          = "mytest"
  spec.version       = Fob::VERSION
  spec.authors       = ["tst"]
  spec.email         = ["ts@sts.com"]
  spec.description   = %q{test}
  spec.summary       = %q{test}
  spec.homepage      = "http://www.ga.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client", ">= 2.0.1", "< 3.0"

  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "minitest", "~> 5.6.1"
  spec.add_development_dependency "webmock", "~> 1.2"
  spec.add_development_dependency "simplecov-lcov"
  spec.add_development_dependency "coveralls_reborn", "~> 0.23.1"
  spec.add_development_dependency "simplecov", "~> 0.21.0"
  spec.add_development_dependency "json", "~> 2.3.1"
  spec.add_development_dependency "uri", "~> 0.10.1"
end