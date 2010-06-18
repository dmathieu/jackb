require 'rdiscount'

module Jackb
  class Markdown < Jackb::Highlight
    attr_reader   :content, :formatted_content
    
    def initialize(content)
      @content = content
      @formatted_content = RDiscount.new(content)
    end
    
    
    def render
      super(formatted_content.to_html)
    end
  end
end