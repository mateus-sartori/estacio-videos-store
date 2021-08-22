# -*- encoding: utf-8 -*-
# stub: video_player 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "video_player".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tolga Gezgini\u015F".freeze]
  s.date = "2016-05-22"
  s.description = "Create video player for Youtube, Vimeo and \u0130zlesene videos".freeze
  s.email = ["tolga@gezginis.com".freeze]
  s.homepage = "https://github.com/tgezginis/video_player".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Video player for Youtube, Vimeo and \u0130zlesene".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 10.0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 10.0"])
  end
end
