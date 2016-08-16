class Calculator
	def self.operator first, second, oper
		result=0
		if oper=="add"
  			result = first + second
  		elsif oper=="subs"
  			result = first - second
  		elsif oper=="mult"
  			result = first * second
  		else
  			result = first / second
  		end
  		result

	end
end
