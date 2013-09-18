# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'damm/version'

Gem::Specification.new do |gem|
  gem.name          = "damm"
  gem.version       = Damm::VERSION
  gem.authors       = ["Steve Rosenhamer"]
  gem.email         = ["srosenhamer@me.com"]
  gem.description   = %q{Damm module provides methods for generating check digits
                         and checking sequences using the damm algorithm}
  gem.summary       = %q{Damm algorithm generator/checker}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]


  gem.add_development_dependency "rspec"
end
