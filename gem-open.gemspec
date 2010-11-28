Gem::Specification.new do |s|
  s.name = 'gem-open'
  s.author = 'OZAWA Sakuro'
  s.email = 'sakuro@2238club.org'
  s.rubyforge_project = ''
  s.homepage = 'http://github.com/sakuro/gem-open'
  s.platform = Gem::Platform::RUBY
  s.summary = %q|A RubyGems plugin to open gem's source directory.|
  s.description = <<-EOF
  A RubyGems plugin to open gem's source directory.
  EOF
  s.version = '0.0.1'
  s.files = <<-FILES.split
    lib/rubygems/commands/open_command.rb
    lib/rubygems_plugin.rb
    Rakefile
    gem-open.gemspec
    MIT-LICENSE
    README.md
  FILES
end
