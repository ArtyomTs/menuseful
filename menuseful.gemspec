# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'menuseful/version'

Gem::Specification.new do |spec|
  spec.name          = "menuseful"
  spec.version       = Menuseful::VERSION
  spec.authors       = ["Artyom Tsaplin"]
  spec.email         = ["artyom.tsaplin@gmail.com"]
  spec.summary       = "Easy and usefull menu generation and highlighting."
  spec.description   = "Provide helpers to connent controllers methods to specific menu items."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
