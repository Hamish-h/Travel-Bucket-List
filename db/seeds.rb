require_relative( "../models/city.rb" )
require_relative( "../models/country.rb" )
require_relative( "../models/travel.rb" )
require("pry-byebug")

Country.delete_all()
City.delete_all()
Travel.delete_all()
