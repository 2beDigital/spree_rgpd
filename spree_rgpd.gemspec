
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "spree_rgpd/version"

Gem::Specification.new do |spec|
  spec.name          = "spree_rgpd"
  spec.version       = SpreeRgpd::VERSION
  spec.authors       = ["Noel"]
  spec.email         = ["noel@2bedigital.com"]

  spec.summary       = %q{Adapt spree to RGPD}
  spec.description   = %q{Permit to export all data user, adapt checkout registration to RGPD}
  spec.homepage      = "http://www.2BeDigital.com"

  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'spree_core', '>= 2.4.0'
  spec.add_dependency 'spree_auth_devise'
  spec.add_dependency 'spree_frontend', '~> 2.4.0'
  spec.add_dependency 'spree_backend', '~> 2.4.0'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
