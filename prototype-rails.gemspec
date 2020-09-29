Gem::Specification.new do |spec|
  spec.name     = 'prototype-rails'
  spec.version  = '5.0.0'
  spec.summary  = 'Prototype, Scriptaculous, and RJS for Ruby on Rails'
  spec.homepage = 'http://github.com/rails/prototype-rails'
  spec.author   = 'Xavier Noria'
  spec.email    = 'fxn@hashref.com'

  spec.files = %w(README.md Rakefile Gemfile MIT-LICENSE) + Dir['lib/**/*', 'vendor/**/*']

  spec.add_dependency('rails', '> 4', '< 6')
  spec.add_dependency('responders')
  spec.add_development_dependency('mocha')
  spec.add_development_dependency('rails-controller-testing')
  spec.license = "MIT"
end
