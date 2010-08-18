require 'cgi'

require 'active_support/core_ext'
require 'jackb/highlight'
require 'jackb/html'
require 'jackb/markdown'
require 'jackb/intro'

module Jackb
  
  def self.render(text, format = 'html')
    "Jackb::#{format.camelize}".constantize.new(text).render
  end
  
  def self.intro(text)
    Jackb::Intro.new(text).render
  end
end
