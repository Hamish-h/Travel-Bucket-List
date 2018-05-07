require_relative( "../models/city.rb" )
require_relative( "../models/country.rb" )
require_relative( "../models/travel.rb" )
require("pry-byebug")

Country.delete_all()
City.delete_all()
Travel.delete_all()

country1 = Country.new({
  "name" => "United Kingdom",
})
country1.save()

country2 = Country.new({
  "name" => "France",
})
country2.save()

country3 = Country.new({
  "name" => "Spain",
})
country3.save()

city1 = City.new({
  "name" => "Edinburgh",
  "country_id" => country1.id()
})
city1.save()

city2 = City.new({
  "name" => "Paris",
  "country_id" => country2.id()
})
city2.save()

city3 = City.new({
  "name" => "Lanzarote",
  "country_id" => country3.id()
})
city3.save()

travel1 = Travel.new({
  "country_id" => country1.id()
  "city_id" => city1.id()
  })

travel2 = Travel.new({
  "country_id" => country1.id()
  "city_id" => city2.id()
  })

travel3 = Travel.new({
  "country_id" => country3.id()
  "city_id" => city3.id()
  })

binding.pry
nil
