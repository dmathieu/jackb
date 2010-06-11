require 'spec_helper'

describe Jack::Html do
  
  it 'should render the content from markdown to html' do
    format = Jack::Markdown.new('My **test**')
    format.render.should eql("<p>My <strong>test</strong></p>\n")
  end
  
  it 'should highlight the code' do
    Jack::Markdown.new("Hey!\n\n    <%= \"test\" %>").render.
    should eql("<p>Hey!</p>\n\n#{Albino.new('<%= "test" %>', :ruby).to_s}\n")
  end
end