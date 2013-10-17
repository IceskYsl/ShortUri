# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ShortUri/version'

Gem::Specification.new do |spec|
  spec.name          = "ShortUri"
  spec.version       = ShortUri::VERSION
  spec.authors       = ["Iceskysl"]
  spec.email         = ["iceskysl@gmail.com"]
  spec.description   = %q{ShortUri for 126.am}
  spec.summary       = %q{ShortUri for 126.am,ref http://126.am/client/api_register_new.jsp}
  spec.homepage      = "https://github.com/IceskYsl/ShortUri"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
