# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rsupport/version'

Gem::Specification.new do |spec|
  spec.name          = "rsupport"
  spec.version       = Rsupport::VERSION
  spec.authors       = ["nomuvan"]
  spec.email         = ["nomuvan@gmail.com"]
  spec.summary       = %q{Ruby Development Support Library}
  spec.description   = %q{Ruby Development Support Library}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 0'

end
