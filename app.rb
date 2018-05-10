require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/city_controller')
require_relative('controllers/country_controller')
require_relative('controllers/travel_controller')

get '/' do
  erb( :index )
end
