# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'date_format/version'

Gem::Specification.new do |spec|
  spec.name          = "date_format"
  spec.version       = "0.2.5"
  spec.authors       = ["Rahul Patil"]
  spec.email         = ["rahupatil_scs@yahoo.co.in"]
  spec.summary       = %q{Date Format}
  spec.description   = %q{The library take raw date as input and adds a method to give formatted date.}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.date          = "2014-10-13"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.files         =  Dir["README.md","Gemfile","Rakefile", "spec/*", "lib/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 0"
end
