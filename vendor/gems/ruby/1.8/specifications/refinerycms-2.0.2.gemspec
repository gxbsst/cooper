# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{refinerycms}
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt", "U\304\243is Ozols", "David Jones", "Steven Heidel"]
  s.date = %q{2012-03-15}
  s.default_executable = %q{refinerycms}
  s.description = %q{A Ruby on Rails CMS that supports Rails 3.2. It's easy to extend and sticks to 'the Rails way' where possible.}
  s.email = %q{info@refinerycms.com}
  s.executables = ["refinerycms"]
  s.files = ["lib/refinery/all.rb", "lib/refinerycms.rb", "templates/refinery/edge.rb", "templates/refinery/installer.rb", "bin/refinerycms"]
  s.homepage = %q{http://refinerycms.com}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{refinerycms}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A Ruby on Rails CMS that supports Rails 3.2}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bundler>, ["~> 1.0"])
      s.add_runtime_dependency(%q<refinerycms-authentication>, ["= 2.0.2"])
      s.add_runtime_dependency(%q<refinerycms-core>, ["= 2.0.2"])
      s.add_runtime_dependency(%q<refinerycms-dashboard>, ["= 2.0.2"])
      s.add_runtime_dependency(%q<refinerycms-images>, ["= 2.0.2"])
      s.add_runtime_dependency(%q<refinerycms-pages>, ["= 2.0.2"])
      s.add_runtime_dependency(%q<refinerycms-resources>, ["= 2.0.2"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<refinerycms-authentication>, ["= 2.0.2"])
      s.add_dependency(%q<refinerycms-core>, ["= 2.0.2"])
      s.add_dependency(%q<refinerycms-dashboard>, ["= 2.0.2"])
      s.add_dependency(%q<refinerycms-images>, ["= 2.0.2"])
      s.add_dependency(%q<refinerycms-pages>, ["= 2.0.2"])
      s.add_dependency(%q<refinerycms-resources>, ["= 2.0.2"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<refinerycms-authentication>, ["= 2.0.2"])
    s.add_dependency(%q<refinerycms-core>, ["= 2.0.2"])
    s.add_dependency(%q<refinerycms-dashboard>, ["= 2.0.2"])
    s.add_dependency(%q<refinerycms-images>, ["= 2.0.2"])
    s.add_dependency(%q<refinerycms-pages>, ["= 2.0.2"])
    s.add_dependency(%q<refinerycms-resources>, ["= 2.0.2"])
  end
end
