require 'spec_helper'

describe Jack::Highlight do
  describe 'code highlighting' do
    it 'should highlight the code' do
      Jack::Highlight.render('<pre><code><%= "test" %></code></pre>').should eql(Albino.new('<%= "test" %>', :ruby).to_s)
    end
    
    it 'should highlight the code in an other language' do
      Jack::Highlight.render('<pre><code language="python"><%= "test" %></code></pre>').should eql(Albino.new('<%= "test" %>', :python).to_s)
    end
    
    describe 'unescape' do
      it 'should unescape the <' do
        Jack::Highlight.new.send(:unescape, 'hey&lt;').should eql('hey<')
      end
      it 'should unescape the >' do
        Jack::Highlight.new.send(:unescape, 'hey&gt;').should eql('hey>')
      end
    end
    
    describe 'extract_lang' do
      it 'should extract a language' do
        Jack::Highlight.new.send(:extract_lang, ' language="python"').should eql(:python)
      end
      
      it 'should extract a language with short lang attribute' do
        Jack::Highlight.new.send(:extract_lang, ' lang="python"').should eql(:python)
      end
      
      it 'should get the default language' do
        Jack::Highlight.new.send(:extract_lang, '').should eql(:ruby)
      end
    end
  end
end