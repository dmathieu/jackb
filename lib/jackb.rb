require 'cgi'

require 'active_support/core_ext'
require 'jackb/highlight'
require 'jackb/html'
require 'jackb/markdown'

module Jackb
  
  def self.render(text, format = 'html')
    "Jackb::#{format.camelize}".constantize.new(text).render
  end
end