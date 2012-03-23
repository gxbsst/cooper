# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{refinerycms-pages}
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt", "U\304\243is Ozols", "David Jones", "Steven Heidel"]
  s.date = %q{2011-10-12}
  s.description = %q{The default content extension of Refinery CMS. This extension handles the administration and display of user-editable pages.}
  s.email = %q{info@refinerycms.com}
  s.files = ["app/controllers/refinery/admin/page_parts_controller.rb", "app/controllers/refinery/admin/pages_controller.rb", "app/controllers/refinery/admin/pages_dialogs_controller.rb", "app/controllers/refinery/page_sweeper.rb", "app/controllers/refinery/pages_controller.rb", "app/helpers/refinery/pages/content_pages_helper.rb", "app/helpers/refinery/pages_helper.rb", "app/models/refinery/page.rb", "app/models/refinery/page_part.rb", "app/presenters/refinery/page_presenter.rb", "app/views/admin/pages/_sortable_list.html.erb", "app/views/refinery/admin/pages/_actions.html.erb", "app/views/refinery/admin/pages/_form.html.erb", "app/views/refinery/admin/pages/_form_advanced_options.html.erb", "app/views/refinery/admin/pages/_form_advanced_options_seo.html.erb", "app/views/refinery/admin/pages/_form_fields_after_title.html.erb", "app/views/refinery/admin/pages/_form_new_page_parts.html.erb", "app/views/refinery/admin/pages/_form_page_parts.html.erb", "app/views/refinery/admin/pages/_locale_picker.html.erb", "app/views/refinery/admin/pages/_page.html.erb", "app/views/refinery/admin/pages/_page_part_field.html.erb", "app/views/refinery/admin/pages/_records.html.erb", "app/views/refinery/admin/pages/_sortable_list.html.erb", "app/views/refinery/admin/pages/children.html.erb", "app/views/refinery/admin/pages/edit.html.erb", "app/views/refinery/admin/pages/index.html.erb", "app/views/refinery/admin/pages/new.html.erb", "app/views/refinery/admin/pages_dialogs/_page_link.html.erb", "app/views/refinery/admin/pages_dialogs/link_to.html.erb", "app/views/refinery/pages/home.html.erb", "app/views/refinery/pages/show.html.erb", "config/locales/bg.yml", "config/locales/cs.yml", "config/locales/da.yml", "config/locales/de.yml", "config/locales/el.yml", "config/locales/en.yml", "config/locales/es.yml", "config/locales/fi.yml", "config/locales/fr.yml", "config/locales/it.yml", "config/locales/ja.yml", "config/locales/ko.yml", "config/locales/lt.yml", "config/locales/lv.yml", "config/locales/nb.yml", "config/locales/nl.yml", "config/locales/pl.yml", "config/locales/pt-BR.yml", "config/locales/pt-PT.yml", "config/locales/rs.yml", "config/locales/ru.yml", "config/locales/sk.yml", "config/locales/sl.yml", "config/locales/sv.yml", "config/locales/vi.yml", "config/locales/zh-CN.yml", "config/locales/zh-TW.yml", "config/routes.rb", "db/migrate/20100913234708_create_refinerycms_pages_schema.rb", "db/seeds.rb", "lib/generators/refinery/pages/pages_generator.rb", "lib/generators/refinery/pages/templates/config/initializers/refinery/pages.rb.erb", "lib/refinery/pages.rb", "lib/refinery/pages/admin/instance_methods.rb", "lib/refinery/pages/configuration.rb", "lib/refinery/pages/content_page_presenter.rb", "lib/refinery/pages/content_presenter.rb", "lib/refinery/pages/engine.rb", "lib/refinery/pages/instance_methods.rb", "lib/refinery/pages/page_part_section_presenter.rb", "lib/refinery/pages/section_presenter.rb", "lib/refinery/pages/tab.rb", "lib/refinery/pages/title_section_presenter.rb", "lib/refinery/pages/type.rb", "lib/refinery/pages/types.rb", "lib/refinerycms-pages.rb", "license.md", "refinerycms-pages.gemspec", "spec/factories/pages.rb", "spec/helpers/refinery/pages/content_pages_helper_spec.rb", "spec/lib/generators/refinery/pages/pages_generator_spec.rb", "spec/lib/pages/content_page_presenter_spec.rb", "spec/lib/pages/content_presenter_spec.rb", "spec/lib/pages/page_part_section_presenter_spec.rb", "spec/lib/pages/section_presenter_spec.rb", "spec/lib/pages/title_section_presenter_spec.rb", "spec/lib/pages_spec.rb", "spec/models/refinery/page_spec.rb", "spec/requests/refinery/admin/pages_spec.rb", "spec/requests/refinery/pages_spec.rb"]
  s.homepage = %q{http://refinerycms.com}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{refinerycms}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Pages extension for Refinery CMS}
  s.test_files = ["spec/factories/pages.rb", "spec/helpers/refinery/pages/content_pages_helper_spec.rb", "spec/lib/generators/refinery/pages/pages_generator_spec.rb", "spec/lib/pages/content_page_presenter_spec.rb", "spec/lib/pages/content_presenter_spec.rb", "spec/lib/pages/page_part_section_presenter_spec.rb", "spec/lib/pages/section_presenter_spec.rb", "spec/lib/pages/title_section_presenter_spec.rb", "spec/lib/pages_spec.rb", "spec/models/refinery/page_spec.rb", "spec/requests/refinery/admin/pages_spec.rb", "spec/requests/refinery/pages_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<awesome_nested_set>, ["~> 2.1.0"])
      s.add_runtime_dependency(%q<seo_meta>, ["~> 1.2.0"])
      s.add_runtime_dependency(%q<refinerycms-core>, ["= 2.0.2"])
      s.add_runtime_dependency(%q<babosa>, ["!= 0.3.6"])
    else
      s.add_dependency(%q<awesome_nested_set>, ["~> 2.1.0"])
      s.add_dependency(%q<seo_meta>, ["~> 1.2.0"])
      s.add_dependency(%q<refinerycms-core>, ["= 2.0.2"])
      s.add_dependency(%q<babosa>, ["!= 0.3.6"])
    end
  else
    s.add_dependency(%q<awesome_nested_set>, ["~> 2.1.0"])
    s.add_dependency(%q<seo_meta>, ["~> 1.2.0"])
    s.add_dependency(%q<refinerycms-core>, ["= 2.0.2"])
    s.add_dependency(%q<babosa>, ["!= 0.3.6"])
  end
end
