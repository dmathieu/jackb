require 'cgi'

require 'jackb/string'
require 'jackb/highlight'
require 'jackb/html'
require 'jackb/markdown'

module Jackb
  
  def self.render(text, format = 'html')
    "Jackb::#{format.camelize}".constantize.new(text).render
  end
end