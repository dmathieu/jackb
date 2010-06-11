begin
  require File.expand_path('../.bundle/environment', __FILE__)
rescue LoadError
  require "rubygems"
  require "bundler"
  Bundler.setup
end
require 'spec/rake/spectask'

#
# The rspec tasks
#
task :default => :spec

desc "Run all specs"
Spec::Rake::SpecTask.new('spec') do |t|
  t.spec_files = FileList['spec/**/*.rb']
  t.spec_opts = ['-cfs']
end

begin
  require 'jeweler'
  
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "jackb"
    gemspec.summary = "Is your content in HTML or Markdown ?"
    gemspec.description = "Takes some content and parses it depending of the format your specify (HTML or Markdown)"
    gemspec.email = "42@dmathieu.com"
    gemspec.homepage = "http://github.com/dmathieu/jack"
    gemspec.authors = ["Damien MATHIEU"]
    
    gemspec.add_dependency('rdiscount', '>= 1.6.3.2')
    gemspec.add_dependency('open4', '>= 1.0.1')
    gemspec.add_dependency('albino', '>= 1.0')
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end