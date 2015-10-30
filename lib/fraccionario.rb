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
end