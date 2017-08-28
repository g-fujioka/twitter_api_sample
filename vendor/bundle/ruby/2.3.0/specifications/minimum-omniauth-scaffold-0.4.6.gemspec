# -*- encoding: utf-8 -*-
# stub: minimum-omniauth-scaffold 0.4.6 ruby lib

Gem::Specification.new do |s|
  s.name = "minimum-omniauth-scaffold".freeze
  s.version = "0.4.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["shu0115".freeze]
  s.date = "2017-05-09"
  s.description = "Scaffold for OmniAuth".freeze
  s.email = ["s.matsumoto0115@gmail.com".freeze]
  s.homepage = "https://github.com/shu0115/minimum-omniauth-scaffold".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Minimum OmniAuth Scaffold".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<rails_config>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<omniauth-twitter>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<omniauth-facebook>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<omniauth-github>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<tapp-awesome_print>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rails_config>.freeze, [">= 0"])
      s.add_dependency(%q<omniauth-twitter>.freeze, [">= 0"])
      s.add_dependency(%q<omniauth-facebook>.freeze, [">= 0"])
      s.add_dependency(%q<omniauth-github>.freeze, [">= 0"])
      s.add_dependency(%q<tapp-awesome_print>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rails_config>.freeze, [">= 0"])
    s.add_dependency(%q<omniauth-twitter>.freeze, [">= 0"])
    s.add_dependency(%q<omniauth-facebook>.freeze, [">= 0"])
    s.add_dependency(%q<omniauth-github>.freeze, [">= 0"])
    s.add_dependency(%q<tapp-awesome_print>.freeze, [">= 0"])
  end
end
