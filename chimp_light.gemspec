# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ['Alex Farrill']
  gem.email         = ['alex.farrill@gmail.com']
  gem.description   = %q{ A lightweight MailChimp API wrapper using libcurl }
  gem.summary       = %q{ A lightweight MailChimp API wrapper using libcurl }
  gem.homepage      = 'https://github.com/alexfarrill/chimp_light'

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'chimp_light'
  gem.require_paths = ['lib']
  gem.version       = '0.0.1'
  
  gem.add_dependency('curb', '>= 0.7.15')
end
