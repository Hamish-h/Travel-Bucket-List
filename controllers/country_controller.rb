require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/city.rb' )
require_relative( '../models/country.rb' )
require_relative( '../models/travel.rb' )

get '/countries' do
  @countries = Countries.all()
  erb ( :"countries/index" )
end
