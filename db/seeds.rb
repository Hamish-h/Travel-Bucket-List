require_relative( "../models/city.rb" )
require_relative( "../models/country.rb" )
require_relative( "../models/travel.rb" )
require("pry-byebug")

Country.delete_all()
City.delete_all()
Travel.delete_all()

country1 = Country.new({
  "name" => "United Kingdom"
})
country1.save()

country2 = Country.new({
  "name" => "France"
})
country2.save()

country3 = Country.new({
  "name" => "Spain"
})
country3.save()

country4 = Country.new({
  "name" => "Germany"
})
country4.save()

country5 = Country.new({
  "name" => "Trinidad"
})
country5.save()

city1 = City.new({
  "name" => "Edinburgh",
  "review" => "Mark destinations and add sights to see ...",
  "country_id" => country1.id()
})
city1.save()

city2 = City.new({
  "name" => "Paris",
  "review" => "Mark destinations and add sights to see ...",
  "country_id" => country2.id()
})
city2.save()

city3 = City.new({
  "name" => "Madrid",
  "review" => "Mark destinations and add sights to see ...",
  "country_id" => country3.id()
})
city3.save()

city4 = City.new({
  "name" => "Berlin",
  "review" => "Mark destinations and add sights to see ...",
  "country_id" => country4.id()
})
city4.save()

city5 = City.new({
  "name" => "Port of Spain",
  "review" => "Mark destinations and add sights to see ...",
  "country_id" => country5.id()
})
city5.save()

travel1 = Travel.new({
  "country_id" => country1.id(),
  "city_id" => city1.id()
  })
travel1.save()

travel2 = Travel.new({
  "country_id" => country2.id(),
  "city_id" => city2.id()
  })
travel2.save()

travel3 = Travel.new({
  "country_id" => country3.id(),
  "city_id" => city3.id()
  })
travel3.save()

travel4 = Travel.new({
  "country_id" => country4.id(),
  "city_id" => city4.id()
  })
travel4.save()

travel5 = Travel.new({
  "country_id" => country5.id(),
  "city_id" => city5.id()
  })
travel5.save()

binding.pry
nil
