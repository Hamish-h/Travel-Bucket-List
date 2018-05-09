require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/country.rb' )

get '/countries' do
  @countries = Country.all()
  erb ( :"countries/index" )
end

# goto new page (form)
get '/countries/new' do
  @countries = Country.all
  erb( :"countries/new" )
end

post '/countries/new' do
  country = Country.new(params)
  country.save
  redirect to("/countries")
end

get '/countries/:id/edit' do
  @country = Country.find(params['id'])
  erb(:"countries/edit")
end




get '/countries/:id' do
  @country = Country.find(params['id'].to_i)
  erb( :"countries/show" )
end
