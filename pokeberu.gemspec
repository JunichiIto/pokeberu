
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pokeberu/version"

Gem::Specification.new do |spec|
  spec.name          = "pokeberu"
  spec.version       = Pokeberu::VERSION
  spec.authors       = ["Junichi Ito"]
  spec.email         = ["me@jnito.com"]

  spec.summary       = %q{Convert numbers to chars according to Japanese pager rule.}
  spec.description   = %q{Sandbox app which converts numbers to chars according to Japanese pager rule.}
  spec.homepage      = "https://github.com/JunichiIto/pokeberu"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ["pokeberu"]
  spec.require_paths = ["lib"]

  spec.add_dependency "mojinizer"

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
