# -*- encoding: utf-8 -*-
# stub: tapp-awesome_print 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "tapp-awesome_print".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Keita Urashima".freeze]
  s.date = "2015-02-24"
  s.description = "provide awesome_print support for tapp".freeze
  s.email = "ursm@ursm.jp".freeze
  s.homepage = "https://github.com/ursm/tapp-awesome_print".freeze
  s.rubygems_version = "2.5.2".freeze
  s.summary = "provide awesome_print support for tapp".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<tapp>.freeze, [">= 1.5.0"])
      s.add_runtime_dependency(%q<awesome_print>.freeze, [">= 0"])
      s.add_development_dependency(%q<turnip>.freeze, [">= 0"])
    else
      s.add_dependency(%q<tapp>.freeze, [">= 1.5.0"])
      s.add_dependency(%q<awesome_print>.freeze, [">= 0"])
      s.add_dependency(%q<turnip>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<tapp>.freeze, [">= 1.5.0"])
    s.add_dependency(%q<awesome_print>.freeze, [">= 0"])
    s.add_dependency(%q<turnip>.freeze, [">= 0"])
  end
end
