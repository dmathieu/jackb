module Jackb
  class Intro
    attr_reader   :content
    
    def initialize(content)
      @content = content
    end
    
    
    def render
      strip_tags get_intro(@content)
    end
    
    private
    def get_intro(content)
      content.split(/<h([0-9]+)>/).first
    end
    
    def strip_tags(content)
      content.gsub /<\/?[^>]*>/, ' '
    end
  end
end
