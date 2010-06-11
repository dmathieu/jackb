require 'spec_helper'

describe Jack do
  
  it 'should render the content using the specified format' do
    Jack.render('<strong>test</strong>', 'html').should eql('<strong>test</strong>')
  end
end