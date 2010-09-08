# encoding: UTF-8
require 'net/http'
require 'uri'

module Jackb
  
  class Highlight
    def self.render(content)
      self.new.render(content)
    end
  
    def render(content)
      content.gsub(highlight_regex) do |s|
        code, lang = unescape($2), extract_lang($1)
        Net::HTTP.post_form(
          URI.parse('http://pygments.appspot.com/'),
          {:lang => lang, :code => code}
        ).body.force_encoding("UTF-8")
      end
    end
  
    private
    def unescape(content)
      CGI::unescapeHTML content
    end
  
    def extract_lang(attributes)
      result = :ruby
      attributes.gsub(/(language|lang)=('|")([0-z]+)('|")/i) do |s|
        result = $3.to_sym
      end
      result
    end
    
    def highlight_regex
      /<pre><code([^<>]*)>(.*?)<\/code><\/pre>/im
    end
  end
end
