lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap-sass/version'

Gem::Specification.new do |s|
  s.name     = 'bootstrap-sass'
  s.version  = Bootstrap::VERSION
  s.authors  = ['Thomas McDonald']
  s.email    = 'tom@conceptcoding.co.uk'
  s.summary  = 'bootstrap-sass is a Sass-powered version of Bootstrap 3, ready to drop right into your Sass powered applications.'
  s.homepage = 'https://github.com/twbs/bootstrap-sass'
  s.license  = 'MIT'

  s.add_runtime_dependency 'sass', '>= 3.3.4'
  s.add_runtime_dependency 'autoprefixer-rails', '>= 5.2.1'

  # Converter
  s.add_development_dependency 'term-ansicolor'

  s.files      = `git ls-files`.split("\n")
end
