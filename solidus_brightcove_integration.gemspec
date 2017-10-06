# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_brightcove_integration/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_brightcove_integration'
  s.version     = SolidusBrightcoveIntegration::VERSION
  s.summary     = 'A brightcove (OTT) platform integration, works with solidus based application.'
  s.description = 'A brightcove (OTT) platform integration, works with solidus based application.'
  s.license     = 'BSD-3-Clause'

  s.author    = 'Lareb Nawab'
  s.email     = 'lareb.indore@gmail.com'
  s.homepage  = 'http://github.com/lareb'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_development_dependency 'solidus', '~> 1.4' #, github: 'solidusio/solidus'
  # Provides basic authentication functionality for testing parts of your engine
  s.add_development_dependency 'solidus_auth_devise', '~> 1.4'
  s.add_dependency 'solidus_core', '~> 1.4'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop', '0.37.2'
  s.add_development_dependency 'rubocop-rspec', '1.4.0'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
