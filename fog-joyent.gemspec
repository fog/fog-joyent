# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fog/joyent/version'

Gem::Specification.new do |spec|
  spec.name          = "fog-joyent"
  spec.version       = Fog::Joyent::VERSION
  spec.authors       = %q(The Effeminate Batman)
  spec.email         = %q(eb@frosthawk.com)

  spec.summary       = %q{This library can be used as a module for 'fog'.}
  spec.description   = %q{Module for the 'fog' gem to support Joyent.}
  spec.homepage      = "https://github.com/fog/fog-joyent"
  spec.license       = "MIT"

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)
  spec.files         = `git ls-files -z`.split("\x0")

  spec.add_dependency 'fog-core'
  spec.add_dependency 'fog-json'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'shindo'
  spec.add_development_dependency 'rubocop', '=0.58.2'
end
