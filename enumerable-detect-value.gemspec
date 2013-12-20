$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name = "enumerable-detect-value"
  s.version = '0.1.0'
  s.authors = [ "Daniel Doubrovkine" ]
  s.email = "dblock@dblock.org"
  s.platform = Gem::Platform::RUBY
  s.required_rubygems_version = '>= 1.3.6'
  s.files = Dir['**/*']
  s.require_paths = [ "lib" ]
  s.homepage = "http://github.com/dblock/enumerable-detect-value"
  s.licenses = [ "MIT" ]
  s.summary = "Unlike Enumerable#detect, #detect_value returns the evaluated value."
end
