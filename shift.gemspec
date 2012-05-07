# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','shift_version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'shift'
  s.version = Shift::VERSION
  s.author = 'Dan Miller'
  s.email = 'dan@danielsmiller.com'
  s.homepage = 'http://danielsmiller.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Shift data from one database to another.'
# Add your other files here if you make them
  s.files = %w(
bin/shift
lib/shift_version.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','shift.rdoc']
  s.rdoc_options << '--title' << 'shift' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'shift'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_runtime_dependency('gli')
end
