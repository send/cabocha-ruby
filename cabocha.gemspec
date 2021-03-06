# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cabocha'

Gem::Specification.new do |spec|
  spec.name          = 'cabocha'
  spec.version       = CaboCha::VERSION
  spec.authors       = ['Yasuaki Uechi']
  spec.email         = ['uetchy@randompaper.co']
  spec.summary       = %q{cabocha-ruby is a gem that provides Ruby bindings for CaboCha.}
  spec.homepage      = 'https://github.com/uetchy/cabocha-ruby'
  spec.license       = 'New BSD'
  spec.extensions    = ['ext/cabocha/extconf.rb']
  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.4'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake-compiler'
  spec.add_development_dependency 'pry-byebug'
end
