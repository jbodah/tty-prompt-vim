
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tty/prompt/vim/version"

Gem::Specification.new do |spec|
  spec.name          = "tty-prompt-vim"
  spec.version       = Tty::Prompt::Vim::VERSION
  spec.authors       = ["Josh Bodah"]
  spec.email         = ["joshuabodah@gmail.com"]

  spec.summary       = %q{Dead-simple Vim-like bindings extension for tty-prompt}
  spec.description   = %q{Vim-like bindings extension for tty-prompt}
  spec.homepage      = "https://github.com/jbodah/tty-prompt-vim"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "tty-prompt", "~> 0.16"
end
