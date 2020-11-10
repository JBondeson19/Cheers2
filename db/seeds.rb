# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Drink.destroy_all

10.times do 
    Drink.create(name: Faker::Beer.name, 
                price: rand(1...20), 
                alcohol: rand(1.0...50.0).round(2),
                classification: "Beer",
                user_id: user.sample.id
                )
end

wines = ["Promontory", "Chardonnay", "Sauvignon Blanc", "Pinot Noir", "Cabernet Franc/Merlot Blend"]

wines.each do |w|
    Drink.create(name: w,
        price: rand(1...20), 
        alcohol: rand(1.0...50.0).round(2),
        classification: "Wine",
        user_id: user.sample.id
        )
end

cocktails = ["Mojito", "Margarita", "Manhattan", "Cosmo", "Old Fashion", "Martini", "Long Island Iced Tea", "Moscow Mule"]
cocktails.each do |cocktail|
    Drink.create(name: cocktail,
        price: rand(1...20), 
        alcohol: rand(1.0...50.0).round(2),
        classification: "Cocktail",
        user_id: user.sample.id
        )
end




                