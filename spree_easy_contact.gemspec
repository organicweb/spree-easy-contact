# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_easy_contact'
  s.version     = '1.3.2'
  s.summary     = 'Simple contact from manager for Spree'
  s.description = 'Simple contact from manager for Spree'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = ['Mathias Standaert']
  s.email     = 'contact@organicweb.fr'
  s.homepage  = 'https://github.com/organicweb/spree-easy-contact'
  s.extra_rdoc_files = ['README.md']
  s.has_rdoc = false
  
  s.license     = 'BSD'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 1.3.2'
  s.add_dependency 'spree_i18n'

  s.add_development_dependency 'capybara', '~> 1.1.2'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'sqlite3'
end
