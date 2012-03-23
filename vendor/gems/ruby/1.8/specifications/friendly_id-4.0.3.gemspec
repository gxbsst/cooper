# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{friendly_id}
  s.version = "4.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Norman Clarke"]
  s.date = %q{2012-03-14}
  s.description = %q{FriendlyId is the "Swiss Army bulldozer" of slugging and permalink plugins for
Ruby on Rails. It allows you to create pretty URLs and work with human-friendly
strings as if they were numeric ids for Active Record models.
}
  s.email = ["norman@njclarke.com"]
  s.files = [".gemtest", ".gitignore", ".travis.yml", ".yardopts", "Changelog.md", "Gemfile", "Guide.rdoc", "MIT-LICENSE", "README.md", "Rakefile", "WhatsNew.md", "bench.rb", "friendly_id.gemspec", "gemfiles/Gemfile.rails-3.0.rb", "gemfiles/Gemfile.rails-3.1.rb", "gemfiles/Gemfile.rails-3.2.rb", "lib/friendly_id.rb", "lib/friendly_id/base.rb", "lib/friendly_id/configuration.rb", "lib/friendly_id/finder_methods.rb", "lib/friendly_id/globalize.rb", "lib/friendly_id/history.rb", "lib/friendly_id/migration.rb", "lib/friendly_id/object_utils.rb", "lib/friendly_id/reserved.rb", "lib/friendly_id/scoped.rb", "lib/friendly_id/simple_i18n.rb", "lib/friendly_id/slug.rb", "lib/friendly_id/slug_generator.rb", "lib/friendly_id/slugged.rb", "lib/generators/friendly_id_generator.rb", "test/base_test.rb", "test/compatibility/ancestry/Gemfile", "test/compatibility/ancestry/ancestry_test.rb", "test/compatibility/threading/Gemfile", "test/compatibility/threading/Gemfile.lock", "test/compatibility/threading/threading.rb", "test/configuration_test.rb", "test/core_test.rb", "test/databases.yml", "test/generator_test.rb", "test/helper.rb", "test/history_test.rb", "test/i18n_test.rb", "test/object_utils_test.rb", "test/reserved_test.rb", "test/schema.rb", "test/scoped_test.rb", "test/shared.rb", "test/slugged_test.rb", "test/sti_test.rb"]
  s.homepage = %q{http://github.com/norman/friendly_id}
  s.post_install_message = %q{NOTE: FriendlyId 4.x breaks compatibility with 3.x. If you're upgrading
from 3.x, please see this document:

http://rubydoc.info/github/norman/friendly_id/master/file/WhatsNew.md

}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{friendly_id}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A comprehensive slugging and pretty-URL plugin.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<railties>, ["~> 3.2.0"])
      s.add_development_dependency(%q<activerecord>, ["~> 3.2.0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<maruku>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<i18n>, [">= 0"])
      s.add_development_dependency(%q<ffaker>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<railties>, ["~> 3.2.0"])
      s.add_dependency(%q<activerecord>, ["~> 3.2.0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<maruku>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<ffaker>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>, ["~> 3.2.0"])
    s.add_dependency(%q<activerecord>, ["~> 3.2.0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<maruku>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<ffaker>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end
