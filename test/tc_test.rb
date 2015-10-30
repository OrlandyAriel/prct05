require '../lib/fraccionario' 
require 'test/unit' 

class Test_Fraccionario < Test::Unit::TestCase
 
  def setup
    @fraccion1 = Fraccionario.new(2, 3)
    @fraccion2 = Fraccionario.new(4, 9)
  end
  
end