# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "slim-rails"
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Leonardo Almeida"]
  s.date = "2013-03-25"
  s.description = "Provides the generator settings required for Rails 3 to use Slim"
  s.email = ["lalmeida08@gmail.com"]
  s.homepage = "http://github.com/leogalmeida/slim-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Provides the generator settings required for Rails 3 to use Slim"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 0.9"])
      s.add_development_dependency(%q<rocco>, ["~> 0.8"])
      s.add_development_dependency(%q<redcarpet>, ["~> 1.0"])
      s.add_development_dependency(%q<awesome_print>, ["~> 1.0"])
      s.add_development_dependency(%q<guard>, ["~> 0.10"])
      s.add_development_dependency(%q<guard-minitest>, ["~> 0.4"])
      s.add_development_dependency(%q<guard-rocco>, ["~> 0.0.3"])
      s.add_runtime_dependency(%q<activesupport>, ["< 4.1", ">= 3.0"])
      s.add_runtime_dependency(%q<actionpack>, ["< 4.1", ">= 3.0"])
      s.add_runtime_dependency(%q<railties>, ["< 4.1", ">= 3.0"])
      s.add_runtime_dependency(%q<slim>, ["~> 1.3"])
    else
      s.add_dependency(%q<rake>, ["~> 0.9"])
      s.add_dependency(%q<rocco>, ["~> 0.8"])
      s.add_dependency(%q<redcarpet>, ["~> 1.0"])
      s.add_dependency(%q<awesome_print>, ["~> 1.0"])
      s.add_dependency(%q<guard>, ["~> 0.10"])
      s.add_dependency(%q<guard-minitest>, ["~> 0.4"])
      s.add_dependency(%q<guard-rocco>, ["~> 0.0.3"])
      s.add_dependency(%q<activesupport>, ["< 4.1", ">= 3.0"])
      s.add_dependency(%q<actionpack>, ["< 4.1", ">= 3.0"])
      s.add_dependency(%q<railties>, ["< 4.1", ">= 3.0"])
      s.add_dependency(%q<slim>, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 0.9"])
    s.add_dependency(%q<rocco>, ["~> 0.8"])
    s.add_dependency(%q<redcarpet>, ["~> 1.0"])
    s.add_dependency(%q<awesome_print>, ["~> 1.0"])
    s.add_dependency(%q<guard>, ["~> 0.10"])
    s.add_dependency(%q<guard-minitest>, ["~> 0.4"])
    s.add_dependency(%q<guard-rocco>, ["~> 0.0.3"])
    s.add_dependency(%q<activesupport>, ["< 4.1", ">= 3.0"])
    s.add_dependency(%q<actionpack>, ["< 4.1", ">= 3.0"])
    s.add_dependency(%q<railties>, ["< 4.1", ">= 3.0"])
    s.add_dependency(%q<slim>, ["~> 1.3"])
  end
end
