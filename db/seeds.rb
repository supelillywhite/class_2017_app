require 'faker'

cats = ["Chinese", "Merican", "Mexican", "Mo Bettah", "Chick-Fil-A"]

cats.each do |c|
  Category.create!(name: c)
end

  User.create!(
                email: "test@test.com",
                password: "asdfasdf",
                password_confirmation: "asdfasdf",
                roles: "admin"
              )

3.times do |i|
  User.create!(
                email: "asdf#{i}@asdf.com",
                password: "asdfasdf",
                password_confirmation: "asdfasdf"
              )
end

20.times do 
  Restaurant.create!(name: Faker::RickAndMorty.location,
                     location: Faker::Address.street_address + ',' + Faker::Address.city + ' ' + Faker::Address.state_abbr + ',' + Faker::Address.zip_code,
                      price: Faker::Number.number(1),
                      link: "https://www.website.com",

                      thumb_image: "http://via.placeholder.com/150x150",

                      category_id: [*1..Category.count].sample,
                      user_id: [*1..User.count].sample

    )
end