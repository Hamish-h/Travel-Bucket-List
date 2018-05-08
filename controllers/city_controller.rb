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

get '/cities/:id' do
  @cities = City.find(params['id'].to_i)
  erb( :"cities/show" )
end
