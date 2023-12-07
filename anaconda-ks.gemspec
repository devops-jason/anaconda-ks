
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "anaconda/ks/version"

Gem::Specification.new do |spec|
  spec.name          = "anaconda-ks"
  spec.version       = Anaconda::Ks::VERSION
  spec.authors       = ["Jason Miller"]
  spec.email         = ["jasonlmiller@jlmillerelectric.com"]

  spec.summary       = %q{Reads and writes Anaconda kick start files.}
  spec.description   = %q{Reads kickstart files for Anaconda and also writes Anaconda kick starts files based on a DSL}
  spec.homepage      = "TODO: put github repo"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
