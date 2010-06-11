module Jack
  module String
    def self.included(klass)
      klass.class_eval do
        def camelize
          self.split(/[^a-z0-9]/i).map{|w| w.capitalize}.join
        end
        
        
        # Ruby 1.9 introduces an inherit argument for Module#const_get and
        # #const_defined? and changes their default behavior.
        # Taken from rails' inflectors. http://github.com/rails/rails/blob/master/activesupport/lib/active_support/inflector/methods.rb
        if Module.method(:const_get).arity == 1
          def constantize
            names = self.split('::')
            names.shift if names.empty? || names.first.empty?
    
            constant = Object
            names.each do |name|
              constant = constant.const_defined?(name) ? constant.const_get(name) : constant.const_missing(name)
            end
            constant
          end
        else
          def constantize
            names = self.split('::')
            names.shift if names.empty? || names.first.empty?
    
            constant = Object
            names.each do |name|
              constant = constant.const_defined?(name, false) ? constant.const_get(name) : constant.const_missing(name)
            end
            constant
          end
        end
      end
    end
  end
end
String.send(:include, Jack::String)