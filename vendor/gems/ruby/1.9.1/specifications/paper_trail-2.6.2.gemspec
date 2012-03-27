# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "paper_trail"
  s.version = "2.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andy Stewart"]
  s.date = "2012-03-12"
  s.description = "Track changes to your models' data.  Good for auditing or versioning."
  s.email = "boss@airbladesoftware.com"
  s.homepage = "http://github.com/airblade/paper_trail"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "Track changes to your models' data.  Good for auditing or versioning."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, ["= 2.10.3"])
      s.add_development_dependency(%q<sqlite3-ruby>, ["~> 1.2"])
      s.add_development_dependency(%q<capybara>, ["~> 1.0.0"])
    else
      s.add_dependency(%q<rails>, ["~> 3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<shoulda>, ["= 2.10.3"])
      s.add_dependency(%q<sqlite3-ruby>, ["~> 1.2"])
      s.add_dependency(%q<capybara>, ["~> 1.0.0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<shoulda>, ["= 2.10.3"])
    s.add_dependency(%q<sqlite3-ruby>, ["~> 1.2"])
    s.add_dependency(%q<capybara>, ["~> 1.0.0"])
  end
end
