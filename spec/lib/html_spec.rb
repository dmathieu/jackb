require 'spec_helper'

describe Jack::Html do
  
  it 'should render the content from html to html' do
    format = Jack::Html.new('My <strong>test</strong>')
    format.render.should eql('My <strong>test</strong>')
  end
  
  it 'should highlight the code' do
    Jack::Html.new('[code language="ruby"]<%= "test" %>[/code]').render.should eql(Albino.new('<%= "test" %>', :ruby).to_s)
  end
  
  it 'should highlight multiple codes' do
    Jack::Html.new('Some Text. [code language="ruby"]<%= "test" %>[/code]; some other text. [code language="python"]<%= "testing" %>[/code]').
      render.should eql("Some Text. #{Albino.new('<%= "test" %>', :ruby).to_s}; some other text. #{Albino.new('<%= "testing" %>', :python).to_s}")
  end
  
  it 'should highlight multiple codes with new lines' do
    Jack::Html.new("Some Text. [code language='ruby']<%= 'test' %>\n\n<%= 'second' %>[/code]; some other text. [code language='python']<%= 'testing' %>[/code]").
      render.should eql("Some Text. #{Albino.new("<%= 'test' %>\n\n<%= 'second' %>", :ruby).to_s}; some other text. #{Albino.new("<%= 'testing' %>", :python).to_s}")
  end
end