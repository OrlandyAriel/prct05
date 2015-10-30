require './lib/fraccionario' 
require 'test/unit' 

class Test_Fraccionario < Test::Unit::TestCase
 
    def setup
        @fraccion1 = Fraccionario.new(2, 3)
        @fraccion2 = Fraccionario.new(4, 9)
    end
    #test para las operaciones +,-,* y /
    def test_simple
        assert_operator(@fraccion1 , '+' , @fraccion2, "Suma")
        assert_operator(@fraccion1 , '-' , @fraccion2, "Resta")
        assert_operator(@fraccion1 , '/' , @fraccion2, "División")
        assert_operator(@fraccion1 , '*' , @fraccion2, "Multiplicación")
    end
    def test_type_check
        assert_raise(TypeError){Fraccionario.new(5,0)}
    end
  
end