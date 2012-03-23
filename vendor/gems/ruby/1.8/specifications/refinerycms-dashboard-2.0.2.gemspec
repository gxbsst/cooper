# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{refinerycms-dashboard}
  s.version = "2.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip Arndt", "U\304\243is Ozols", "David Jones", "Steven Heidel"]
  s.date = %q{2012-03-15}
  s.description = %q{The dashboard is usually the first extension the user sees in the backend of Refinery CMS. It displays useful information and contains links to common functionality.}
  s.email = %q{info@refinerycms.com}
  s.files = ["app/controllers/refinery/admin/dashboard_controller.rb", "app/helpers/refinery/admin/dashboard_helper.rb", "app/views/refinery/admin/dashboard/_actions.html.erb", "app/views/refinery/admin/dashboard/_additional_dashboard_menu_items.html.erb", "app/views/refinery/admin/dashboard/_recent_activity.html.erb", "app/views/refinery/admin/dashboard/_recent_inquiries.html.erb", "app/views/refinery/admin/dashboard/_records.html.erb", "app/views/refinery/admin/dashboard/index.html.erb", "app/views/refinery/admin/dashboard/index.rss.builder", "config/locales/bg.yml", "config/locales/cs.yml", "config/locales/da.yml", "config/locales/de.yml", "config/locales/el.yml", "config/locales/en.yml", "config/locales/es.yml", "config/locales/fi.yml", "config/locales/fr.yml", "config/locales/it.yml", "config/locales/ja.yml", "config/locales/ko.yml", "config/locales/lt.yml", "config/locales/lv.yml", "config/locales/nb.yml", "config/locales/nl.yml", "config/locales/pl.yml", "config/locales/pt-BR.yml", "config/locales/rs.yml", "config/locales/ru.yml", "config/locales/sk.yml", "config/locales/sl.yml", "config/locales/sv.yml", "config/locales/vi.yml", "config/locales/zh-CN.yml", "config/locales/zh-TW.yml", "config/routes.rb", "lib/refinery/dashboard.rb", "lib/refinery/dashboard/configuration.rb", "lib/refinery/dashboard/engine.rb", "lib/refinerycms-dashboard.rb", "license.md", "refinerycms-dashboard.gemspec", "spec/requests/refinery/admin/dashboard_spec.rb"]
  s.homepage = %q{http://refinerycms.com}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{refinerycms}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Dashboard extension for Refinery CMS}
  s.test_files = ["spec/requests/refinery/admin/dashboard_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<refinerycms-core>, ["= 2.0.2"])
    else
      s.add_dependency(%q<refinerycms-core>, ["= 2.0.2"])
    end
  else
    s.add_dependency(%q<refinerycms-core>, ["= 2.0.2"])
  end
end
