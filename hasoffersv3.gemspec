lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hasoffersv3/version'

Gem::Specification.new do |s|
  s.name          = "hasoffersv3"
  s.version       = HasOffersV3::VERSION
  s.platform      = Gem::Platform::RUBY
  s.authors       = ["Maximilian Seifert", "Timo Rößner"]
  s.email         = ["ms@hitfox.com", "tr@hitfox.com"]
  s.summary       = %q{REST Client for the HasOffers API, version 3.}
  s.description   = %q{REST Client for the HasOffers API, version 3.}

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency 'oj' # For JSON parsing
  s.add_development_dependency 'rspec'
end
