require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/city.rb' )
require_relative( '../models/country.rb' )

# get a list of cities
get '/cities' do
  @cities = City.all()
  erb ( :"cities/index" )
end

# adds new city
get '/cities/new' do
  @cities = City.all
  erb(:"cities/new")
end

get '/cities/:id' do
  @city = City.find(params['id'].to_i)
  erb( :"cities/show" )
end

get '/cities/:id/edit' do
  @city = City.find(params['id'].to_i)
  erb(:"cities/edit")
end

post '/cities/:id' do
  city = City.new(params)
  city.update
  redirect to("/cities")
end

post '/cities' do
  city = City.new(params)
  city.save
  redirect to("/cities")
end

post '/cities/:id/delete' do
  city = City.find(params['id'].to_i)
  city.delete
  redirect to("/cities")
end
