=begin
Orlandy Ariel Sánchez Acosta
Clase fracción.
=end
class Fraccionario
	attr_accessor:m_numerador, :m_denominador
	#Constructor, recibe 2 parametros: numerador y denominador
	def initialize(a_num, a_den)
		raise TypeError, "Error, el denominador es 0." if a_den.equal?0
		
		t_mcd = maxComDiv(a_num, a_den)
		
		@m_numerador = a_num / t_mcd
		@m_denominador = a_den / t_mcd
	end
	
	def maxComDiv(a_num, a_den)
		a_num, a_den = a_num.abs, a_den.abs
		while a_den > 0
			a_num, a_den = a_den, (a_num % a_den)
		end
		a_num
	end
	
    ###############################################
    #sobrecarga de los operadores +,-,* y /
  
    def +(numero)
    	t_numerador1 = (@m_numerador * numero.m_denominador)
    	t_numerador2 = (@m_denominador * numero.m_numerador)
    	t_numeradorRes = t_numerador1 + t_numerador2
    	t_denominador = (@m_denominador * numero.m_denominador)
    	
    	Fraccionario.new(t_numeradorRes, t_denominador)
    end
    
    def -(numero)
    	t_numerador1 = (@m_numerador * numero.m_denominador)
    	t_numerador2 = (@m_denominador * numero.m_numerador)
    	t_numeradorRes = t_numerador1 - t_numerador2
    	t_denominador = (@m_denominador * numero.m_denominador)
    	
    	Fraccionario.new(t_numeradorRes, t_denominador)
    end
    
    def *(numero)
    	Fraccionario.new(@m_numerador * numero.m_numerador, @m_denominador * numero.m_denominador)
    end
    
    def /(numero)
    	Fraccionario.new(@m_numerador * numero.m_denominador, @m_denominador * numero.m_numerador)
    end
  
end

#=begin
a = Fraccionario.new(3,2)
b = Fraccionario.new(7,6)
a=a/b
puts a.m_numerador.to_s .+ "\n--\n".+ a.m_denominador.to_s
#=end