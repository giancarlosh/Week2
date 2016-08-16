require "sinatra"
require_relative "./calculator.rb"

get "/" do
	erb(:index)
end


post "/calculator" do
	first = params[:first_number].to_f
  	second = params[:second_number].to_f
  	@oper = params[:operation]
  	@result = Calculator.operator(first, second, @oper)			
  	erb(:calculate)
end
