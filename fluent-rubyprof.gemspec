# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-rubyprof"
  spec.version       = "0.2.0"
  spec.authors       = ["Naotoshi Seo"]
  spec.email         = ["sonots@gmail.com"]
  spec.summary       = %q{Tools for start/stop ruby-prof dynamically from outside of fluentd}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/sonots/fluent-rubyprof"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
