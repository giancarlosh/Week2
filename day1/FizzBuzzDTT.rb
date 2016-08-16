 class FizzBuzz
 	def self.do_it (input)
 		if input % 15 == 0
 		 	"FizzBuzz"
 		 elsif input % 5 == 0
 		 	"Buzz"
 		 elsif input % 3 == 0
 		 	"Fizz"	
 		 else	
 		 	input		
 		end  
 	end

 	#no se testea este metodo  porque se basa en el anterior que
 	#previamene ya ha sido testeado 
 	def count_to100
 		(1..100).each {|i| puts do_it(i)}
 	end
 end
 

 RSpec.describe "FizzBuzz test" do 
 	# let (:test){FizzBuzz.new}

 	it "multiple of three print Fizz" do
 		expect(FizzBuzz.do_it(3)).to eq("Fizz")
 	end
 	it "multiple of five print Buzz" do
 		expect(FizzBuzz.do_it(5)).to eq("Buzz")
 	end
	it "multiple of both three and five print FizzBuzz" do
 		expect(FizzBuzz.do_it(15)).to eq("FizzBuzz")
 	end
 	it "no multiple" do
 		expect(FizzBuzz.do_it(17)).to eq(17)
 	end
 	# it "no multiple" do
 	# 	expect(test.count_to100.to eq(17)
 	# end


 end