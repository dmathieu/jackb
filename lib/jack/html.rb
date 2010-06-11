module Jack
  class Html < Jack::Highlight
    attr_reader   :content
    
    def initialize(content)
      @content = content
    end
    
    
    def render
      super(@content)
    end
    
    private
    def highlight_regex
      /\[code([^\[\]]*)\](.*?)\[\/code\]/im
    end
  end
end