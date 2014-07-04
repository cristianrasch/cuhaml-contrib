# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cuhaml/contrib/version'

Gem::Specification.new do |spec|
  spec.name          = "cuhaml-contrib"
  spec.version       = Cuhaml::Contrib::VERSION
  spec.authors       = ["Cristian Rasch"]
  spec.email         = ["cristianrasch@gmail.com"]
  spec.description   = %q{Contributed helpers to spice up your cuba+haml apps}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/cristianrasch/cuhaml-contrib"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "haml", "~> 4.0"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "cuba", "~> 3.0"
end
