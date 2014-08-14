# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'persist_campaign/version'

Gem::Specification.new do |spec|
  spec.name          = "persist_campaign"
  spec.version       = PersistCampaign::VERSION
  spec.authors       = ["Andy Dust"]
  spec.email         = ["adust@mubi.com"]
  spec.summary       = %q{Persist campaign parameters - such as utm_campaign, utm_source, etc - on Rails redirect_to.}
  spec.description   = %q{This Rails gem allows you to persist analytics parameters through redirects. By default it 
                          persists utm_campaign, utm_source, utm_term, utm_medium, utm_content and gclid (for Google Adwords). 
                          Additional param keys can be configured.}
  spec.homepage      = "http://github.com/mubi/ma/wiki"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rails', '>= 3.1.12'
  #spec.add_dependency 'railties', '>= 3.0.0'
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec-rails', '~> 2.14'
  spec.add_development_dependency 'generator_spec', '~> 0.9.2'
end
