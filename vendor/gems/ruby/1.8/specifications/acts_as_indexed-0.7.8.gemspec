# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{acts_as_indexed}
  s.version = "0.7.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Douglas F Shearer"]
  s.date = %q{2012-03-14}
  s.description = %q{Acts As Indexed is a plugin which provides a pain-free way to add fulltext search to your Ruby on Rails app}
  s.email = %q{dougal.s@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["CHANGELOG", "Gemfile", "Gemfile.lock", "MIT-LICENSE", "README.rdoc", "Rakefile", "VERSION", "acts_as_indexed.gemspec", "lib/acts_as_indexed.rb", "lib/acts_as_indexed/class_methods.rb", "lib/acts_as_indexed/configuration.rb", "lib/acts_as_indexed/instance_methods.rb", "lib/acts_as_indexed/search_atom.rb", "lib/acts_as_indexed/search_index.rb", "lib/acts_as_indexed/singleton_methods.rb", "lib/acts_as_indexed/storage.rb", "lib/will_paginate_search.rb", "rails/init.rb", "test/abstract_unit.rb", "test/acts_as_indexed_test.rb", "test/configuration_test.rb", "test/database.yml", "test/fixtures/post.rb", "test/fixtures/posts.yml", "test/schema.rb", "test/search_atom_test.rb", "test/search_index_test.rb"]
  s.homepage = %q{http://github.com/dougal/acts_as_indexed}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Acts As Indexed is a plugin which provides a pain-free way to add fulltext search to your Ruby on Rails app}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
