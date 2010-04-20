$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

unless defined?(ActiveSupport)
  raise "testdependencies must be required *after* rails/activesupport has been loaded" 
end

if defined?(Shoulda::Helpers) && Test::Unit::TestCase.ancestors.include?(Shoulda::Helpers)
  require "adapters/shoulda" 
end
require "adapters/plain"


  