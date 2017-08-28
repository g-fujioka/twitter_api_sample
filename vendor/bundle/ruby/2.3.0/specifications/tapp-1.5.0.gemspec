# -*- encoding: utf-8 -*-
# stub: tapp 1.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "tapp".freeze
  s.version = "1.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Keita Urashima".freeze]
  s.date = "2015-02-24"
  s.description = "tap { pp self }".freeze
  s.email = ["ursm@ursm.jp".freeze]
  s.executables = ["tapp".freeze]
  s.files = ["bin/tapp".freeze]
  s.homepage = "http://github.com/esminc/tapp".freeze
  s.rubygems_version = "2.5.2".freeze
  s.summary = "tap { pp self }".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>.freeze, [">= 0"])
      s.add_development_dependency(%q<turnip>.freeze, [">= 0"])
    else
      s.add_dependency(%q<thor>.freeze, [">= 0"])
      s.add_dependency(%q<turnip>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<thor>.freeze, [">= 0"])
    s.add_dependency(%q<turnip>.freeze, [">= 0"])
  end
end
