# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unifi/version'

Gem::Specification.new do |spec|
  spec.name          = "unifi"
  spec.version       = Unifi::VERSION
  spec.authors       = ["Jon Stokes"]
  spec.email         = ["jon@collectiveidea.com"]

  spec.summary       = %q{A ruby client for the Unifi AP Controller software, v4.}
  spec.homepage      = "http://github.com/collectiveidea/unifi"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_dependency "faraday", "~> 0.9.2"
  spec.add_dependency "faraday_middleware", "~> 0.10"
  spec.add_dependency "troupe", "~> 0.1.0"
  spec.add_dependency "addressable", "~> 2.4.0"
  spec.add_dependency "faraday-cookie_jar", "~> 0.0.6"
end
