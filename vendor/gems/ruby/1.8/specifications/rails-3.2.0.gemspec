# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rails}
  s.version = "3.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Heinemeier Hansson"]
  s.date = %q{2012-01-20}
  s.description = %q{Ruby on Rails is a full-stack web framework optimized for programmer happiness and sustainable productivity. It encourages beautiful code by favoring convention over configuration.}
  s.email = %q{david@loudthinking.com}
  s.homepage = %q{http://www.rubyonrails.org}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Full-stack web application framework.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["#<YAML::Syck::DefaultKey:0x114a98c28> 3.2.0"])
      s.add_runtime_dependency(%q<actionpack>, ["#<YAML::Syck::DefaultKey:0x114a93390> 3.2.0"])
      s.add_runtime_dependency(%q<activerecord>, ["#<YAML::Syck::DefaultKey:0x114a8d5a8> 3.2.0"])
      s.add_runtime_dependency(%q<activeresource>, ["#<YAML::Syck::DefaultKey:0x114a879c8> 3.2.0"])
      s.add_runtime_dependency(%q<actionmailer>, ["#<YAML::Syck::DefaultKey:0x114a7db30> 3.2.0"])
      s.add_runtime_dependency(%q<railties>, ["#<YAML::Syck::DefaultKey:0x114a6b610> 3.2.0"])
      s.add_runtime_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<activesupport>, ["#<YAML::Syck::DefaultKey:0x114a98c28> 3.2.0"])
      s.add_dependency(%q<actionpack>, ["#<YAML::Syck::DefaultKey:0x114a93390> 3.2.0"])
      s.add_dependency(%q<activerecord>, ["#<YAML::Syck::DefaultKey:0x114a8d5a8> 3.2.0"])
      s.add_dependency(%q<activeresource>, ["#<YAML::Syck::DefaultKey:0x114a879c8> 3.2.0"])
      s.add_dependency(%q<actionmailer>, ["#<YAML::Syck::DefaultKey:0x114a7db30> 3.2.0"])
      s.add_dependency(%q<railties>, ["#<YAML::Syck::DefaultKey:0x114a6b610> 3.2.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<activesupport>, ["#<YAML::Syck::DefaultKey:0x114a98c28> 3.2.0"])
    s.add_dependency(%q<actionpack>, ["#<YAML::Syck::DefaultKey:0x114a93390> 3.2.0"])
    s.add_dependency(%q<activerecord>, ["#<YAML::Syck::DefaultKey:0x114a8d5a8> 3.2.0"])
    s.add_dependency(%q<activeresource>, ["#<YAML::Syck::DefaultKey:0x114a879c8> 3.2.0"])
    s.add_dependency(%q<actionmailer>, ["#<YAML::Syck::DefaultKey:0x114a7db30> 3.2.0"])
    s.add_dependency(%q<railties>, ["#<YAML::Syck::DefaultKey:0x114a6b610> 3.2.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
