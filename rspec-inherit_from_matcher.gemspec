Gem::Specification.new do |spec|
  spec.version       = '1.0.0'
  spec.name          = 'rspec-inherit_from_matcher'
  spec.authors       = ["Faraz Yashar"]
  spec.email         = 'faraz.yashar@gmail.com'
  spec.summary       = 'RSpec matcher for checking whether a class inherits from another'

  spec.homepage      = 'https://github.com/fny/rspec-inherit_from_matcher'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($\)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rake'
  spec.add_dependency 'bundler'
  spec.add_dependency 'rspec', '>= 2.9'
end
