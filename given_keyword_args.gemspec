# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'given_keyword_args/version'

Gem::Specification.new do |spec|
  spec.name          = "given_keyword_args"
  spec.version       = GivenKeywordArgs::VERSION
  spec.authors       = ["joker1007"]
  spec.email         = ["kakyoin.hierophant@gmail.com"]

  spec.summary       = %q{Access Helper to all keyword args}
  spec.description   = %q{Access Helper to all keyword args}
  spec.homepage      = "https://github.com/joker1007/given_keyword_args"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/given_keyword_args/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rake-compiler"
end
