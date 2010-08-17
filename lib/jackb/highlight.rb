module Jackb
  
  class Highlight
    def self.render(content)
      self.new.render(content)
    end
  
    def render(content)
      content.gsub(highlight_regex) do |s|
        #
        # Deactivated for now
        #
        s
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
