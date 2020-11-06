# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Drink.destroy_all
User.destroy_all

user = []

5.times do 
    user << User.create(name: Faker::Beer.brand, email: "jpbond58@gmail.com")
end

10.times do 
    Drink.create(name: Faker::Beer.name, 
                price: rand(1...20), 
                alcohol: rand(1.0...50.0),
                user_id: user.sample.id
                )
end



                