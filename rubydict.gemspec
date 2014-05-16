# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubydict/version'

Gem::Specification.new do |spec|
  spec.name          = "rubydict"
  spec.version       = Rubydict::VERSION
  spec.authors       = ["jason.li", "teng.C"]
  spec.email         = ["congteng45@gmail.com"]
  spec.summary       = %q{a simple wrapper for star dict}
  spec.description   = %q{a simple wrapper for star dict....}
  spec.homepage      = "http://qqdd.me"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.6"
end
