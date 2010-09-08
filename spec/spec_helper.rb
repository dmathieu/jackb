# encoding: UTF-8

begin
  require File.expand_path('../.bundle/environment', __FILE__)
rescue LoadError
  require "rubygems"
  require "bundler"
  Bundler.setup
end

#
# We're using Albino only for the tests
# In order to avoid calling pygments.appspot every time
# It's not required to launch the app
require 'albino'

require 'lib/jackb'
