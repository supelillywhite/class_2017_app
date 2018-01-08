require 'faker'

10.times do 
  Restaurant = Restaurant.create(
    name: Faker::RickAndMorty.location
    location: Faker::Address.street_address + ',' + Faker::Address.city + ' ' + Faker::Address.state_abbr + ',' Faker::Address.zip_code
    price: Faker::Number.number(1)
    link: "https://www.website.com"
    thumbnail: Faker::Avatar.image
    )