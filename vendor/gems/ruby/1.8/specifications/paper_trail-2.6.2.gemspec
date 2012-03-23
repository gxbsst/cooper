# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{paper_trail}
  s.version = "2.6.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andy Stewart"]
  s.date = %q{2012-03-12}
  s.description = %q{Track changes to your models' data.  Good for auditing or versioning.}
  s.email = %q{boss@airbladesoftware.com}
  s.files = [".gitignore", ".travis.yml", "Gemfile", "MIT-LICENSE", "README.md", "Rakefile", "lib/generators/paper_trail/USAGE", "lib/generators/paper_trail/install_generator.rb", "lib/generators/paper_trail/templates/add_object_changes_column_to_versions.rb", "lib/generators/paper_trail/templates/create_versions.rb", "lib/paper_trail.rb", "lib/paper_trail/config.rb", "lib/paper_trail/controller.rb", "lib/paper_trail/has_paper_trail.rb", "lib/paper_trail/version.rb", "lib/paper_trail/version_number.rb", "paper_trail.gemspec", "test/dummy/Rakefile", "test/dummy/app/controllers/application_controller.rb", "test/dummy/app/controllers/test_controller.rb", "test/dummy/app/controllers/widgets_controller.rb", "test/dummy/app/helpers/application_helper.rb", "test/dummy/app/models/animal.rb", "test/dummy/app/models/article.rb", "test/dummy/app/models/authorship.rb", "test/dummy/app/models/book.rb", "test/dummy/app/models/cat.rb", "test/dummy/app/models/document.rb", "test/dummy/app/models/dog.rb", "test/dummy/app/models/elephant.rb", "test/dummy/app/models/fluxor.rb", "test/dummy/app/models/foo_widget.rb", "test/dummy/app/models/legacy_widget.rb", "test/dummy/app/models/person.rb", "test/dummy/app/models/post.rb", "test/dummy/app/models/song.rb", "test/dummy/app/models/translation.rb", "test/dummy/app/models/widget.rb", "test/dummy/app/models/wotsit.rb", "test/dummy/app/versions/post_version.rb", "test/dummy/app/views/layouts/application.html.erb", "test/dummy/config.ru", "test/dummy/config/application.rb", "test/dummy/config/boot.rb", "test/dummy/config/database.yml", "test/dummy/config/environment.rb", "test/dummy/config/environments/development.rb", "test/dummy/config/environments/production.rb", "test/dummy/config/environments/test.rb", "test/dummy/config/initializers/backtrace_silencers.rb", "test/dummy/config/initializers/inflections.rb", "test/dummy/config/initializers/mime_types.rb", "test/dummy/config/initializers/secret_token.rb", "test/dummy/config/initializers/session_store.rb", "test/dummy/config/locales/en.yml", "test/dummy/config/routes.rb", "test/dummy/db/migrate/20110208155312_set_up_test_tables.rb", "test/dummy/db/schema.rb", "test/dummy/public/404.html", "test/dummy/public/422.html", "test/dummy/public/500.html", "test/dummy/public/favicon.ico", "test/dummy/public/javascripts/application.js", "test/dummy/public/javascripts/controls.js", "test/dummy/public/javascripts/dragdrop.js", "test/dummy/public/javascripts/effects.js", "test/dummy/public/javascripts/prototype.js", "test/dummy/public/javascripts/rails.js", "test/dummy/public/stylesheets/.gitkeep", "test/dummy/script/rails", "test/functional/controller_test.rb", "test/functional/thread_safety_test.rb", "test/integration/navigation_test.rb", "test/paper_trail_test.rb", "test/support/integration_case.rb", "test/test_helper.rb", "test/unit/inheritance_column_test.rb", "test/unit/model_test.rb", "test/unit/timestamp_test.rb"]
  s.homepage = %q{http://github.com/airblade/paper_trail}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Track changes to your models' data.  Good for auditing or versioning.}
  s.test_files = ["test/dummy/Rakefile", "test/dummy/app/controllers/application_controller.rb", "test/dummy/app/controllers/test_controller.rb", "test/dummy/app/controllers/widgets_controller.rb", "test/dummy/app/helpers/application_helper.rb", "test/dummy/app/models/animal.rb", "test/dummy/app/models/article.rb", "test/dummy/app/models/authorship.rb", "test/dummy/app/models/book.rb", "test/dummy/app/models/cat.rb", "test/dummy/app/models/document.rb", "test/dummy/app/models/dog.rb", "test/dummy/app/models/elephant.rb", "test/dummy/app/models/fluxor.rb", "test/dummy/app/models/foo_widget.rb", "test/dummy/app/models/legacy_widget.rb", "test/dummy/app/models/person.rb", "test/dummy/app/models/post.rb", "test/dummy/app/models/song.rb", "test/dummy/app/models/translation.rb", "test/dummy/app/models/widget.rb", "test/dummy/app/models/wotsit.rb", "test/dummy/app/versions/post_version.rb", "test/dummy/app/views/layouts/application.html.erb", "test/dummy/config.ru", "test/dummy/config/application.rb", "test/dummy/config/boot.rb", "test/dummy/config/database.yml", "test/dummy/config/environment.rb", "test/dummy/config/environments/development.rb", "test/dummy/config/environments/production.rb", "test/dummy/config/environments/test.rb", "test/dummy/config/initializers/backtrace_silencers.rb", "test/dummy/config/initializers/inflections.rb", "test/dummy/config/initializers/mime_types.rb", "test/dummy/config/initializers/secret_token.rb", "test/dummy/config/initializers/session_store.rb", "test/dummy/config/locales/en.yml", "test/dummy/config/routes.rb", "test/dummy/db/migrate/20110208155312_set_up_test_tables.rb", "test/dummy/db/schema.rb", "test/dummy/public/404.html", "test/dummy/public/422.html", "test/dummy/public/500.html", "test/dummy/public/favicon.ico", "test/dummy/public/javascripts/application.js", "test/dummy/public/javascripts/controls.js", "test/dummy/public/javascripts/dragdrop.js", "test/dummy/public/javascripts/effects.js", "test/dummy/public/javascripts/prototype.js", "test/dummy/public/javascripts/rails.js", "test/dummy/public/stylesheets/.gitkeep", "test/dummy/script/rails", "test/functional/controller_test.rb", "test/functional/thread_safety_test.rb", "test/integration/navigation_test.rb", "test/paper_trail_test.rb", "test/support/integration_case.rb", "test/test_helper.rb", "test/unit/inheritance_column_test.rb", "test/unit/model_test.rb", "test/unit/timestamp_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
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
