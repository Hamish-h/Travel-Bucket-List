require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/country.rb' )

get '/countries' do
  @countries = Country.all()
  erb ( :"countries/index" )
end

get '/countries/new' do
  @countries = Country.all
  erb( :"countries/new" )
end

get '/countries/:id' do
  @countries = Country.find(params['id'].to_i)
  erb( :"countries/show" )
end

get '/cities/:id/edit' do
  @cities = City.find(params['id'])
  erb(:edit)
end
