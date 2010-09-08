# encoding: UTF-8
require 'spec_helper'

describe Jackb do
  
  it 'should render the content using the specified format' do
    Jackb.render('<strong>test</strong>', 'html').should eql('<strong>test</strong>')
  end
end