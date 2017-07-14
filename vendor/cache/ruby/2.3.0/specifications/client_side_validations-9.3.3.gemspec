# -*- encoding: utf-8 -*-
# stub: client_side_validations 9.3.3 ruby lib

Gem::Specification.new do |s|
  s.name = "client_side_validations"
  s.version = "9.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Geremia Taglialatela", "Brian Cardarella"]
  s.date = "2017-06-01"
  s.description = "Client Side Validations made easy for your Rails 5 applications"
  s.email = ["tagliala.dev@gmail.com", "bcardarella@gmail.com"]
  s.homepage = "https://github.com/DavyJonesLocker/client_side_validations"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Client Side Validations"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["< 5.2", ">= 5.0.0.1"])
      s.add_runtime_dependency(%q<jquery-rails>, ["~> 4.3"])
      s.add_runtime_dependency(%q<js_regex>, ["~> 1.2"])
      s.add_development_dependency(%q<appraisal>, ["~> 2.2"])
      s.add_development_dependency(%q<byebug>, ["~> 9.0"])
      s.add_development_dependency(%q<coveralls>, ["~> 0.8.21"])
      s.add_development_dependency(%q<m>, ["~> 1.5"])
      s.add_development_dependency(%q<minitest>, ["~> 5.10"])
      s.add_development_dependency(%q<mocha>, ["~> 1.2"])
      s.add_development_dependency(%q<rake>, ["~> 12.0"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.49.1"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.14.1"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3"])
      s.add_development_dependency(%q<sinatra>, ["~> 2.0"])
      s.add_development_dependency(%q<shotgun>, ["~> 0.9.2"])
      s.add_development_dependency(%q<thin>, ["~> 1.7"])
      s.add_development_dependency(%q<coffee-script>, ["~> 2.4"])
    else
      s.add_dependency(%q<rails>, ["< 5.2", ">= 5.0.0.1"])
      s.add_dependency(%q<jquery-rails>, ["~> 4.3"])
      s.add_dependency(%q<js_regex>, ["~> 1.2"])
      s.add_dependency(%q<appraisal>, ["~> 2.2"])
      s.add_dependency(%q<byebug>, ["~> 9.0"])
      s.add_dependency(%q<coveralls>, ["~> 0.8.21"])
      s.add_dependency(%q<m>, ["~> 1.5"])
      s.add_dependency(%q<minitest>, ["~> 5.10"])
      s.add_dependency(%q<mocha>, ["~> 1.2"])
      s.add_dependency(%q<rake>, ["~> 12.0"])
      s.add_dependency(%q<rubocop>, ["~> 0.49.1"])
      s.add_dependency(%q<simplecov>, ["~> 0.14.1"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3"])
      s.add_dependency(%q<sinatra>, ["~> 2.0"])
      s.add_dependency(%q<shotgun>, ["~> 0.9.2"])
      s.add_dependency(%q<thin>, ["~> 1.7"])
      s.add_dependency(%q<coffee-script>, ["~> 2.4"])
    end
  else
    s.add_dependency(%q<rails>, ["< 5.2", ">= 5.0.0.1"])
    s.add_dependency(%q<jquery-rails>, ["~> 4.3"])
    s.add_dependency(%q<js_regex>, ["~> 1.2"])
    s.add_dependency(%q<appraisal>, ["~> 2.2"])
    s.add_dependency(%q<byebug>, ["~> 9.0"])
    s.add_dependency(%q<coveralls>, ["~> 0.8.21"])
    s.add_dependency(%q<m>, ["~> 1.5"])
    s.add_dependency(%q<minitest>, ["~> 5.10"])
    s.add_dependency(%q<mocha>, ["~> 1.2"])
    s.add_dependency(%q<rake>, ["~> 12.0"])
    s.add_dependency(%q<rubocop>, ["~> 0.49.1"])
    s.add_dependency(%q<simplecov>, ["~> 0.14.1"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3"])
    s.add_dependency(%q<sinatra>, ["~> 2.0"])
    s.add_dependency(%q<shotgun>, ["~> 0.9.2"])
    s.add_dependency(%q<thin>, ["~> 1.7"])
    s.add_dependency(%q<coffee-script>, ["~> 2.4"])
  end
end
