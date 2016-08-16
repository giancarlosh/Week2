require './PPcha.rb'

RSpec.describe "Lexiconomitron test" do 
 	# let (:test){FizzBuzz.new}

 	it "elimate T´s" do
 		expect(Lexiconomitron.eat_t("great scott!")).to eq("grea sco!")
 	end

 	it "reverse an array without T" do
 		expect(Lexiconomitron.reverse_array(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
	end
	it "oompa loompa test" do
 		expect(Lexiconomitron.oompa_loompa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if","you","be","my"])
 	end
 end