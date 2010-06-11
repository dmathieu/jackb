require 'cgi'
require 'activesupport'

require 'jack/highlight'
require 'jack/html'
require 'jack/markdown'

module Jack
  
  def self.render(text, format = 'html')
    "Jack::#{format.camelize}".constantize.new(text).render
  end
end