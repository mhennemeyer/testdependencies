require 'rubygems'
require 'test/unit'
require 'rails/all'
if defined?(SHOULDA_TEST)
  require 'shoulda'
end

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))


require 'testdependencies'