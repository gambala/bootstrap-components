lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap-components/version'

Gem::Specification.new do |s|
  s.name     = 'bootstrap-components'
  s.version  = Bootstrap::VERSION
  s.authors  = ['Vitaliy Emeliyantsev']
  s.email    = 'gambala.rus@gmail.com'
  s.summary  = 'bootstrap-components is a Componentized and sprockets-optimized version of Bootstrap.'
  s.homepage = 'https://github.com/gambala/bootstrap-components'
  s.license  = 'MIT'

  s.add_runtime_dependency 'sass', '>= 3.3.4'
  s.add_runtime_dependency 'autoprefixer-rails', '>= 5.2.1'

  # Converter
  s.add_development_dependency 'term-ansicolor'

  s.files      = `git ls-files`.split("\n")
end
