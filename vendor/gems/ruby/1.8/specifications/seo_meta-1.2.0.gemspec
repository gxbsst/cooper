# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{seo_meta}
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt"]
  s.date = %q{2012-01-18}
  s.description = %q{SEO Meta tags plugin for Ruby on Rails}
  s.email = %q{parndt@gmail.com}
  s.files = ["lib/generators/seo_meta_generator.rb", "lib/seo_meta/instance_methods.rb", "lib/seo_meta.rb", "lib/tasks/seo_meta.rake", "db/migrate/20110329222114_create_seo_meta.rb", "app/models/seo_metum.rb", "app/views/seo_meta/_form.html.erb", "config/locales/bg.yml", "config/locales/cs.yml", "config/locales/da.yml", "config/locales/de.yml", "config/locales/en.yml", "config/locales/es.yml", "config/locales/fi.yml", "config/locales/fr.yml", "config/locales/it.yml", "config/locales/jp.yml", "config/locales/lolcat.yml", "config/locales/lt.yml", "config/locales/lv.yml", "config/locales/nb.yml", "config/locales/nl.yml", "config/locales/pl.yml", "config/locales/pt-BR.yml", "config/locales/rs.yml", "config/locales/ru.yml", "config/locales/sk.yml", "config/locales/sl.yml", "config/locales/sv.yml", "config/locales/vi.yml", "config/locales/zh-CN.yml", "config/locales/zh-TW.yml", "license.md", "readme.md"]
  s.homepage = %q{http://philiparndt.name}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{SEO Meta tags plugin}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<combustion>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_runtime_dependency(%q<railties>, [">= 3.0.0"])
    else
      s.add_dependency(%q<combustion>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<railties>, [">= 3.0.0"])
    end
  else
    s.add_dependency(%q<combustion>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<railties>, [">= 3.0.0"])
  end
end
