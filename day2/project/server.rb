require 'sinatra'

get "/hola" do 
	#conecto con bd....
	@time=Time.now
	@mostrar=true
	@usuarios=["Pepe","Luis","Maria"]
	@quetal="que tal?asdsadsadasdasd"
	erb :time
end
get "/about" do 
	#conecto con bd....
	@mostrar=true
	@usuarios=["PABLOSXAS","Luis","Maria"]
	@quetal="que tal"
	erb :about
end
get "/twitter/:usuario/:location" do
	@usuario = params[:usuario]
	@location = params[:location]
	erb :usuario

end
