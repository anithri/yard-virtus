# -*- encoding: utf-8 -*-

require File.expand_path("../lib/yard/virtus/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "yard-virtus"
  gem.version     = YARD::Virtus::VERSION
  gem.authors     = ["Dmitry Dzema"]
  gem.email       = ["dimad.ag@gmail.com"]
  gem.homepage    = "https://github.com/DimaD/yard-virtus"
  gem.summary     = "This library provides handlers to YARD so it can extract information about Virtus attributes like types and visibility"
  gem.description = gem.summary
  gem.license     = "MIT"

  gem.require_paths = ["lib"]
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {spec}/*`.split("\n")
  gem.extra_rdoc_files = %w[LICENSE.txt README.md]

  gem.add_dependency("virtus", "= 1.0.5")
  gem.add_dependency("yard",   "~> 0.8.7.4")
end
