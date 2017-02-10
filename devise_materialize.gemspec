# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devise_materialize/version'

Gem::Specification.new do |spec|
  spec.name          = "devise_materialize"
  spec.version       = DeviseMaterialize::VERSION
  spec.authors       = ["Christopher Pezza"]
  spec.email         = ["pezza.chris@gmail.com"]

  spec.summary       = "Generator for Materialize styled Devise Views"
  spec.description   = "This Gem provides a generator for Materialize styled " \
                       "Devise Views in HAML, SLIM, and ERB format with " \
                       "standard Form or simple form functionality"
  spec.homepage      = "https://github/techgurupezza/devise_materialize"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
          "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency("railties", ">= 4.1.0", "< 5.1")

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "pry", "~> 0.10.4"
end
