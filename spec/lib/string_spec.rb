require 'spec_helper'

describe String do
  
  it 'should include the camelize method' do
    "string".respond_to?(:camelize).should eql(true)
  end
  
  it 'should include the constantize method' do
    "string".respond_to?(:constantize).should eql(true)
  end
  
  it 'should camelize the string' do
    "html".camelize.should eql('Html')
    "ht_ml".camelize.should eql('HtMl')
  end
  
  it 'should constantize a string' do
    "String".constantize.new.should be_kind_of String
  end
end