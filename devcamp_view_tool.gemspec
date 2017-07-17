# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'devcamp_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "devcamp_view_tool"
  spec.version       = DevcampViewTool::VERSION
  spec.authors       = ["Jordan Hudgens"]
  spec.email         = ["jordan@devcamp.com"]

  spec.summary       = %q{Gem stuffs are in here and will do wonderful magic that I can not explain.}
  spec.description   = %q{Everything in the summary, but more, cause I have to, and I have to idea what to actually write here, so , its longer now. Yay. Also this randomly turned green, not sure why, it might be broken. Send help. I fixed it.}
  spec.homepage      = "https://devcamp.com/sie2017/guide/how-to-build-rubygem-scratch"
  
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
