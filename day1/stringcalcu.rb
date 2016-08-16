class StringCalculator
	def add(input)
		#&
		input.split(/\D/).map(&:to_i).reduce(0,:+)
	end

end
 RSpec.describe"String Calculator Test" do 
 	it "zero digits" do
 		expect(StringCalculator.new.add("")).to eq(0)
 	end

 	it "string numbers separated by spaces" do
 		expect(StringCalculator.new.add("1 2 3")).to eq(6)
 	end
 	it "string numbers separated by comas" do
 		expect(StringCalculator.new.add("1,2,3")).to eq(6)
 	end

 	#si pongo una xit en la siguiente linea , no ejecutara la linea del test
 	it "string numbers " do
 		expect(StringCalculator.new.add("*ewqeqw4")).to eq(4)
 	end


 end
