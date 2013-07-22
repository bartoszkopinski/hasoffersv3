Gem::Specification.new do |s|
  s.name          = "hasoffersv3"
  s.platform      = Gem::Platform::RUBY
  s.authors       = ["Maximilian Seifert"]
  s.email         = ["ms@hitfox.com"]
  s.summary       = %q{REST Client for the HasOffers API, version 3.}
  s.description   = %q{REST Client for the HasOffers API, version 3.}

  s.files         = `git ls-files`.split("\n")

  s.add_dependency 'oj' # For JSON parsing
end