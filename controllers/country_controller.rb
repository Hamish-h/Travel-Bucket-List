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

get '/countries/new' do
  @countries = Countries.all
  erb( :"countries/new" )
end

get '/countries/:id' do
  @countries = Countries.find(params['id'].to_i)
  erb( :"countries/show" )
end
