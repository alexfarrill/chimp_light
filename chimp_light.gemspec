# -*- encoding: utf-8 -*-
require File.expand_path('../lib/chimp_light/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alex Farrill"]
  gem.email         = ["alex.farrill@gmail.com"]
  gem.description   = %q{ Lightweight way to use the MailChimp API via libcurl }
  gem.summary       = %q{ Lightweight way to use the MailChimp API via libcurl }
  gem.homepage      = "https://github.com/alexfarrill/chimp_light"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "chimp_light"
  gem.require_paths = ["lib"]
  gem.version       = ChimpLight::VERSION
end
