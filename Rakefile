require 'rake/gempackagetask'
require 'rake/clean'

spec = Gem::Specification.load('gem-open.gemspec')

Rake::GemPackageTask.new(spec) do |t|
  t.need_zip = true
  t.need_tar = true
end
