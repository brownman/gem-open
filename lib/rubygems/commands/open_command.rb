require 'rubygems/command'
require 'rubygems/version_option'
require 'rubygems/source_index'

class Gem::Commands::OpenCommand < Gem::Command

  include Gem::VersionOption

  def initialize
    super 'open', 'Opens the source directory of the given installed gem',
      :version => Gem::Requirement.default
    add_version_option
  end

  def arguments # :nodoc:
    "GEMNAME       name of gem to open its source directory"
  end

  def usage # :nodoc:
    "#{program_name} GEMNAME"
  end

  def execute # :nodoc:
    exec(find_editor, find_spec.full_gem_path)
  end

  private

  def find_editor # :nodoc:
    ENV.values_at(*%w(GEM_EDITOR VISUAL EDITOR)).find{|e| !e.nil? && !e.empty?}.tap do |editor|
      alert_error 'To open a gem, set $EDITOR or $GEM_EDITOR' unless editor
    end
  end

  def find_spec # :nodoc:
    gem_name = get_one_gem_name
    index = Gem::SourceIndex.from_installed_gems
    specs = index.find_name(gem_name, options[:version])

    case specs.size
    when 0
      alert_error "Unknown gem '#{gem_name}'"
      terminate_interaction 1
    when 1
      specs.first
    else
      specs.max_by(&:version).tap do |spec|
        alert_warning "Opening the latest version(#{spec.version}) of '#{gem_name}'"
      end
    end
  end

end
