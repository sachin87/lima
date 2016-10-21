# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lima/version'

Gem::Specification.new do |spec|
  spec.name          = "lima"
  spec.version       = Lima::VERSION
  spec.authors       = ["Sachin Singh"]
  spec.email         = ["sachin.y87@gmail.com"]

  spec.summary       = %q{A Rack-based Web Framework.}
  spec.description   = %q{A Rack-based Web Framework.}
  spec.homepage      = "https://github.com/sachin87/lima"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_runtime_dependency "rack"
end
