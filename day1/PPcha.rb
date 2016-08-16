
class Lexiconomitron
	def self.eat_t (input)
		input.gsub(/[Tt]/,"")
		
	end

	def self.reverse_array(input)
		aux = input.map do |item|
			eat_t(item.reverse)
		end
		aux=[aux[0], aux[aux.length-1]]

	end
	def self.oompa_loompa(input)
		aux=[]
		input.each do |i|
			if i.length<4
				aux.push(eat_t(i))
			end
		end
		aux
	end
end


 
