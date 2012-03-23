# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{babosa}
  s.version = "0.3.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Norman Clarke"]
  s.date = %q{2012-03-12}
  s.description = %q{    A library for creating slugs. Babosa an extraction and improvement of the
    string code from FriendlyId, intended to help developers create similar
 \   libraries or plugins.
}
  s.email = %q{norman@njclarke.com}
  s.files = ["lib/babosa/identifier.rb", "lib/babosa/transliterator/base.rb", "lib/babosa/transliterator/bulgarian.rb", "lib/babosa/transliterator/cyrillic.rb", "lib/babosa/transliterator/danish.rb", "lib/babosa/transliterator/german.rb", "lib/babosa/transliterator/greek.rb", "lib/babosa/transliterator/latin.rb", "lib/babosa/transliterator/macedonian.rb", "lib/babosa/transliterator/norwegian.rb", "lib/babosa/transliterator/romanian.rb", "lib/babosa/transliterator/russian.rb", "lib/babosa/transliterator/serbian.rb", "lib/babosa/transliterator/spanish.rb", "lib/babosa/transliterator/swedish.rb", "lib/babosa/transliterator/ukrainian.rb", "lib/babosa/utf8/active_support_proxy.rb", "lib/babosa/utf8/dumb_proxy.rb", "lib/babosa/utf8/java_proxy.rb", "lib/babosa/utf8/mappings.rb", "lib/babosa/utf8/proxy.rb", "lib/babosa/utf8/unicode_proxy.rb", "lib/babosa/version.rb", "lib/babosa.rb", "README.md", "MIT-LICENSE", "Rakefile", "init.rb", "spec/babosa_spec.rb", "spec/spec_helper.rb", "spec/transliterators/base_spec.rb", "spec/transliterators/bulgarian_spec.rb", "spec/transliterators/danish_spec.rb", "spec/transliterators/german_spec.rb", "spec/transliterators/greek_spec.rb", "spec/transliterators/macedonian_spec.rb", "spec/transliterators/norwegian_spec.rb", "spec/transliterators/romanian_spec.rb", "spec/transliterators/russian_spec.rb", "spec/transliterators/serbian_spec.rb", "spec/transliterators/spanish_spec.rb", "spec/transliterators/swedish_spec.rb", "spec/transliterators/ukrainian_spec.rb", "spec/utf8_proxy_spec.rb", ".gemtest"]
  s.homepage = %q{http://norman.github.com/babosa}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{[none]}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A library for creating slugs.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<activesupport>, [">= 2.3.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.3.0"])
      s.add_dependency(%q<rspec>, ["~> 2.5.0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.3.0"])
    s.add_dependency(%q<rspec>, ["~> 2.5.0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end
