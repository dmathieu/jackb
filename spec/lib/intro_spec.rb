require 'spec_helper'

describe Jackb::Intro do
  
  describe 'intro' do
    it 'should return the content without any html tag' do
      Jackb::Intro.new('Hello<br />World').render.should eql('Hello World')
    end
    
    it 'should return only the intro' do
      Jackb::Intro.new('Hello<h1>World</h1> Coucou <h2>Monde</h2>').render.should eql('Hello')
    end
  end
  
  describe 'get_intro' do
    it 'should get the content before the first title' do
      Jackb::Intro.new('').send(:get_intro, '<h1>').should eql('')
      Jackb::Intro.new('').send(:get_intro, 'Hello<h2>').should eql('Hello')
      Jackb::Intro.new('').send(:get_intro, 'Hello<h3>World').should eql('Hello')
    end
  end
  
  describe 'strip_tags' do
    it 'should remove any html tag' do
      Jackb::Intro.new('').send(:strip_tags, 'Hello<br />World').should eql('Hello World')
      Jackb::Intro.new('').send(:strip_tags, 'Hello<img src="" />World').should eql('Hello World')
    end
  end
end
