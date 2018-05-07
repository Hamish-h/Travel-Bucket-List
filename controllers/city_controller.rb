require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/city.rb' )
require_relative( '../models/country.rb' )
require_relative( '../models/travel.rb' )

get '/cities' do
  @cities = Cities.all()
  erb ( :"cities/index" )
end

get '/cities/:id' do
  @cities = Cities.find(params['id'].to_i)
  erb( :"cities/show" )
end
