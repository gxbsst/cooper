# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{refinerycms-resources}
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt", "U\304\243is Ozols", "David Jones", "Steven Heidel"]
  s.date = %q{2011-10-12}
  s.description = %q{Handles all file upload and processing functionality in Refinery CMS.}
  s.email = %q{info@refinerycms.com}
  s.files = ["app/controllers/refinery/admin/resources_controller.rb", "app/models/refinery/resource.rb", "app/views/refinery/admin/resources/_actions.html.erb", "app/views/refinery/admin/resources/_existing_resource.html.erb", "app/views/refinery/admin/resources/_form.html.erb", "app/views/refinery/admin/resources/_records.html.erb", "app/views/refinery/admin/resources/_resource.html.erb", "app/views/refinery/admin/resources/_resources.html.erb", "app/views/refinery/admin/resources/edit.html.erb", "app/views/refinery/admin/resources/index.html.erb", "app/views/refinery/admin/resources/insert.html.erb", "app/views/refinery/admin/resources/new.html.erb", "config/locales/bg.yml", "config/locales/cs.yml", "config/locales/da.yml", "config/locales/de.yml", "config/locales/el.yml", "config/locales/en.yml", "config/locales/es.yml", "config/locales/fi.yml", "config/locales/fr.yml", "config/locales/it.yml", "config/locales/ja.yml", "config/locales/ko.yml", "config/locales/lt.yml", "config/locales/lv.yml", "config/locales/nb.yml", "config/locales/nl.yml", "config/locales/pl.yml", "config/locales/pt-BR.yml", "config/locales/rs.yml", "config/locales/ru.yml", "config/locales/sk.yml", "config/locales/sl.yml", "config/locales/sv.yml", "config/locales/vi.yml", "config/locales/zh-CN.yml", "config/locales/zh-TW.yml", "config/routes.rb", "db/migrate/20100913234709_create_refinerycms_resources_schema.rb", "lib/generators/refinery/resources/resources_generator.rb", "lib/generators/refinery/resources/templates/config/initializers/refinery/resources.rb.erb", "lib/refinery/resources.rb", "lib/refinery/resources/configuration.rb", "lib/refinery/resources/dragonfly.rb", "lib/refinery/resources/engine.rb", "lib/refinery/resources/validators.rb", "lib/refinery/resources/validators/file_size_validator.rb", "lib/refinerycms-resources.rb", "license.md", "refinerycms-resources.gemspec", "spec/factories/resource.rb", "spec/fixtures/refinery_is_awesome.txt", "spec/fixtures/refinery_is_awesome2.txt", "spec/lib/generators/refinery/resources/resources_generator_spec.rb", "spec/models/refinery/resource_spec.rb", "spec/requests/refinery/admin/resources_spec.rb"]
  s.homepage = %q{http://refinerycms.com}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{refinerycms}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Resources extension for Refinery CMS}
  s.test_files = ["spec/factories/resource.rb", "spec/fixtures/refinery_is_awesome.txt", "spec/fixtures/refinery_is_awesome2.txt", "spec/lib/generators/refinery/resources/resources_generator_spec.rb", "spec/models/refinery/resource_spec.rb", "spec/requests/refinery/admin/resources_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<dragonfly>, ["~> 0.9.8"])
      s.add_runtime_dependency(%q<rack-cache>, [">= 0.5.3"])
      s.add_runtime_dependency(%q<refinerycms-core>, ["= 2.0.2"])
    else
      s.add_dependency(%q<dragonfly>, ["~> 0.9.8"])
      s.add_dependency(%q<rack-cache>, [">= 0.5.3"])
      s.add_dependency(%q<refinerycms-core>, ["= 2.0.2"])
    end
  else
    s.add_dependency(%q<dragonfly>, ["~> 0.9.8"])
    s.add_dependency(%q<rack-cache>, [">= 0.5.3"])
    s.add_dependency(%q<refinerycms-core>, ["= 2.0.2"])
  end
end
