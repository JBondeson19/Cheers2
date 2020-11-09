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
names = ["James", "Erick", "Vita", "Rico", "Aaron"]
emails = ["jpbond58@gmail.com", "eeverick@gmail.com", "lavitaloca@gmail.com", "ricoswuave@gmail.com", "a-a-ron@gmail.com"]
names.each do |name|
    user << User.create(name: name, email: emails.sample)
end

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




                