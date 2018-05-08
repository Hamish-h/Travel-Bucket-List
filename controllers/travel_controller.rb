require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/city.rb' )
require_relative( '../models/country.rb' )
require_relative( '../models/travel.rb' )

get '/travels' do
  @travels = Travel.all()
  erb ( :"travels/index" )
end

get '/travels/:id' do
  @travels = Travel.find(params['id'].to_i)
  erb( :"travels/show" )
end
