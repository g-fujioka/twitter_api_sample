# -*- encoding: utf-8 -*-
# stub: rails_config 0.99.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_config".freeze
  s.version = "0.99.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jacques Crocker".freeze, "Fred Wu".freeze, "Piotr Kuczynski".freeze]
  s.date = "2015-08-05"
  s.description = "Please install the Config gem instead.".freeze
  s.email = ["railsjedi@gmail.com".freeze, "ifredwu@gmail.com".freeze, "piotr.kuczynski@gmail.com".freeze]
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze]
  s.homepage = "https://github.com/railsconfig/rails_config".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Please install the Config gem instead.".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<config>.freeze, [">= 1.0.0.beta1"])
    else
      s.add_dependency(%q<config>.freeze, [">= 1.0.0.beta1"])
    end
  else
    s.add_dependency(%q<config>.freeze, [">= 1.0.0.beta1"])
  end
end
