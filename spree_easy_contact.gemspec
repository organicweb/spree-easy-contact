Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_easy_contact'
  s.version     = '1.0.5'
  s.summary     = 'Contact form manager for spreecommerce'
  #s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'
  s.license     = 'BSD'

  s.authors           = ['Mathias Standaert']
  s.date              = %q(2011-03-15)
  s.email             = 'contact@organicweb.fr'
  s.homepage          = 'https://github.com/organicweb/spree-easy-contact'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*', 'public/**/*', 'db/**/*', 'config/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'
  s.extra_rdoc_files = ['README.md']
  s.has_rdoc = true

  s.add_dependency('spree_core', '>= 0.40.0')
  s.add_dependency('honeypot-captcha')
end