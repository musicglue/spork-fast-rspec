# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = 'spork-fast-rspec'
  gem.version       = '0.0.8'
  gem.authors       = ['Lee Henson']
  gem.email         = ['lee.m.henson@gmail.com']
  gem.homepage      = 'https://github.com/musicglue/spork-fast-rspec'
  gem.summary       = %q{Minimal rspec runner for spork}
  gem.description   = %q{Spork plugin to enable running a fast, minimal RSpec setup alongside a full-stack RSpec.}

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ['lib']

  # Dependencies
  gem.required_ruby_version = '>= 1.8.7'
  gem.add_dependency 'spork', '>= 0.8.0'
end
