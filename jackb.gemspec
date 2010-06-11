# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jackb}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Damien MATHIEU"]
  s.date = %q{2010-06-11}
  s.description = %q{Takes some content and parses it depending of the format your specify (HTML or Markdown)}
  s.email = %q{42@dmathieu.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     "Gemfile",
     "README.md",
     "Rakefile",
     "VERSION",
     "jackb.gemspec",
     "lib/jack.rb",
     "lib/jack/highlight.rb",
     "lib/jack/html.rb",
     "lib/jack/markdown.rb",
     "spec/lib/highlight_spec.rb",
     "spec/lib/html_spec.rb",
     "spec/lib/jack_spec.rb",
     "spec/lib/markdown_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/dmathieu/jack}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Is your content in HTML or Markdown ?}
  s.test_files = [
    "spec/lib/markdown_spec.rb",
     "spec/lib/html_spec.rb",
     "spec/lib/highlight_spec.rb",
     "spec/lib/jack_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rdiscount>, [">= 1.6.3.2"])
      s.add_runtime_dependency(%q<open4>, [">= 1.0.1"])
      s.add_runtime_dependency(%q<albino>, [">= 1.0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 3.0.0.beta4"])
    else
      s.add_dependency(%q<rdiscount>, [">= 1.6.3.2"])
      s.add_dependency(%q<open4>, [">= 1.0.1"])
      s.add_dependency(%q<albino>, [">= 1.0"])
      s.add_dependency(%q<activesupport>, [">= 3.0.0.beta4"])
    end
  else
    s.add_dependency(%q<rdiscount>, [">= 1.6.3.2"])
    s.add_dependency(%q<open4>, [">= 1.0.1"])
    s.add_dependency(%q<albino>, [">= 1.0"])
    s.add_dependency(%q<activesupport>, [">= 3.0.0.beta4"])
  end
end

