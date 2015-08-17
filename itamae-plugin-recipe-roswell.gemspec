# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/roswell/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-roswell"
  spec.version       = Itamae::Plugin::Recipe::Roswell::VERSION
  spec.authors       = ["Rudolph Miller"]
  spec.email         = ["chopsticks.tk.ppfm@gmail.com"]

  spec.summary       = %q{Itamae Recipe 'Roswell'.}
  spec.description   = %q{Itamae Recipe 'Roswell'.}
  spec.homepage      = "https://github.com/Rudolph-Miller/itamae-plugin-recipe-roswell"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "serverspec"
end
