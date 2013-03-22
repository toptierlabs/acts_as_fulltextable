# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acts_as_fulltextable/version'

Gem::Specification.new do |gem|
  gem.name          = "acts_as_fulltextable"
  gem.version       = ActsAsFulltextable::VERSION
  gem.authors       = ["Anthony Figueroa"]
  gem.email         = ["afigueroa@toptierlabs.com"]
  gem.description   = %q{Creates an auxiliary table in order to be used with full-text searches}
  gem.summary       = %q{It allows you to create an auxiliary to be used for full-text searches. It behaves like a polymorphic association, so it can be used with any ActiveRecord model.}
  gem.homepage      = "https://github.com/toptierlabs/acts_as_fulltextable"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
