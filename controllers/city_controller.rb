require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/city.rb' )
require_relative( '../models/country.rb' )

get '/cities' do
  @cities = City.all()
  erb ( :"cities/index" )
end

get '/cities/new' do
  @cities = City.all
  erb(:"cities/new")
end

post '/cities' do
  cities = City.new(params)
  cities.save
  redirect to("/cities")
end






get '/cities/:id/edit' do
  @city = City.find(params['id'].to_i)
  erb(:"cities/edit")
end

get '/cities/:id' do
  @city = City.find(params['id'].to_i)
  erb( :"cities/show" )
end

post '/cities/:id' do
  city = City.new(params)
  city.update
  redirect to("/cities")
end
