# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "devise_materialize/version"

Gem::Specification.new do |spec|
  spec.name          = "devise_materialize"
  spec.version       = DeviseMaterialize::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Christopher Pezza"]
  spec.email         = ["chiefpansancolt@gmail.com"]

  spec.summary       = "Generator for Materialize styled Devise Views"
  spec.description   = %q(This Gem provides a generator for Materialize styled
                          Devise Views in HAML, SLIM, and ERB format with
                          standard Form or simple form functionality)
  spec.homepage      = "https://chiefpansancolt.github.io/devise_materialize/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.test_files    = `git ls-files -- test/*`.split("\n")
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.3"
  spec.required_rubygems_version = "> 1.3.1"

  spec.add_dependency "railties", ">= 4.1.0", "< 7.0.0"
end
