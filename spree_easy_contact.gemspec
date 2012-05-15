Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_easy_contact'
  s.version     = '1.0.7'
  s.summary     = 'Add gem summary here'
  #s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'
  s.license     = 'BSD'

  s.authors           = ['Mathias Standaert']
  s.date              = %q(2011-02-08)
  s.email             = 'contact@organicweb.fr'
  s.homepage          = %q{https://github.com/organicweb/spree-easy-contact}

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*', 'public/**/*', 'db/**/*', 'config/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'
  s.extra_rdoc_files = ['README.md']
  s.has_rdoc = true

  s.add_dependency('spree_core', '>= 1.0')
  s.add_dependency('honeypot-captcha')
  s.add_dependency('recaptcha', "~> 0.3.2")
end