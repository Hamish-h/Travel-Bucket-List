require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/city.rb' )
require_relative( '../models/country.rb' )
require_relative( '../models/travel.rb' )

get '/countries' do
  @countries = Country.all()
  erb ( :"countries/index" )
end

get '/countries/new' do
  @countries = County.all
  erb( :"countries/new" )
end

get '/countries/:id' do
  @countries = Country.find(params['id'].to_i)
  erb( :"countries/show" )
end
