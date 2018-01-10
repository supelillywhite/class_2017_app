require 'faker'

cats = ["'Merican", "Pizza", "Sushi/Asian", "Greek", "Chinese", "Mexican"]

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

  Restaurant.create!(name: "R&R BBQ",
                     location: "1628 W Traverse Parkway Lehi, UT 84043",
                      price: 2,
                      link: "https://randrbbq.com/",

                      thumb_image: "https://amindfullmom.com/wp-content/uploads/2017/12/Homemade-Chicken-Bone-Stock-150x150.jpg",

                      category_id: 1,
                      user_id: [*1..User.count].sample

    )

  Restaurant.create!(name: "Tsunami Restaurant & Sushi Bar",
                     location: "1616 W Traverse Pkwy Lehi, UT 84043",
                      price: 2,
                      link: "https://www.tsunamiutah.com/",

                      thumb_image: "https://amindfullmom.com/wp-content/uploads/2017/12/Homemade-Chicken-Bone-Stock-150x150.jpg",

                      category_id: 3,
                      user_id: [*1..User.count].sample

    )

    Restaurant.create!(name: "Blaze Fast-Fire'd Pizza",
                     location: "3370 North Digital Dr Ste 100",
                      price: 1,
                      link: "https://www.tsunamiutah.com/",

                      thumb_image: "https://amindfullmom.com/wp-content/uploads/2017/12/Homemade-Chicken-Bone-Stock-150x150.jpg",

                      category_id: 2,
                      user_id: [*1..User.count].sample

    )

      Restaurant.create!(name: "Chubby's Café",
                     location: "1284 N Redwood Rd Saratoga Springs, UT 84045",
                      price: 1,
                      link: "http://www.chubbyscafeut.com/",

                      thumb_image: "https://amindfullmom.com/wp-content/uploads/2017/12/Homemade-Chicken-Bone-Stock-150x150.jpg",

                      category_id: 1,
                      user_id: [*1..User.count].sample

    )

      Restaurant.create!(name: "Greek Souvlaki",
                     location: "2975 Clubhouse Dr Lehi, UT 84043",
                      price: 1,
                      link: "http://www.greeksouvlaki.com/",

                      thumb_image: "https://amindfullmom.com/wp-content/uploads/2017/12/Homemade-Chicken-Bone-Stock-150x150.jpg",

                      category_id: 4,
                      user_id: [*1..User.count].sample

    )

      Restaurant.create!(name: "Riced",
                     location: "2975 Clubhouse Dr Lehi, UT 84043",
                      price: 1,
                      link: "https://www.riced.com/",

                      thumb_image: "https://amindfullmom.com/wp-content/uploads/2017/12/Homemade-Chicken-Bone-Stock-150x150.jpg",

                      category_id: 5,
                      user_id: [*1..User.count].sample

    )

      Restaurant.create!(name: "Moochie's Meatballs",
                      location: "380 N 850th E Lehi, UT 84043",
                      price: 2,
                      link: "https://www.moochiesmeatballs.com/",

                      thumb_image: "https://amindfullmom.com/wp-content/uploads/2017/12/Homemade-Chicken-Bone-Stock-150x150.jpg",

                      category_id: 1,
                      user_id: [*1..User.count].sample

    )

      Restaurant.create!(name: "Paco's Tacos",
                      location: "114 S 850th E Lehi, UT 84043",
                      price: 1,
                      link: "http://www.steelers.com/",

                      thumb_image: "https://amindfullmom.com/wp-content/uploads/2017/12/Homemade-Chicken-Bone-Stock-150x150.jpg",

                      category_id: 6,
                      user_id: [*1..User.count].sample

    )
