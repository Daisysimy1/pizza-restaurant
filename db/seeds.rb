# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "🍕 Adding pizzas to restaurants..."
16.times do
    RestaurantPizza.create(
        price: rand(1..30),
        pizza_id:Pizza.all[rand(Pizza.count)].id,
        restaurant_id: Restaurant.all[rand(Restaurant.count)].id 
    )
end

#seeding restaurant
5.times do
    Restaurant.create(
        name:Faker::Restaurant.name,
        address:Faker::Address.street_address
    )
end

#seeding pizzas
Pizza.create(
    name: "Cheese",
    ingredients: "Dough, Tomato Sauce, Cheese"
)
Pizza.create(
    name: "Pepperoni",
    ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni"
)
Pizza.create(
    name: "California",
    ingredients: "Dough, Sauce, Ricotta, Red peppers, Mustard"
)
Pizza.create(
    name: "Greek",
    ingredients: "Dough, Sauce, Cheese, Feta, Artichokes, Kalamata Olives"
)
Pizza.create(
    name: "Margherita",
    ingredients: "Dough, Sauce, Cheese, Basil"
)
Pizza.create(
    name: "BBQ Chicken",
    ingredients: "Dough, BBQ sauce, Chicken, Cilantro, Red Onions, Fontina Cheese"
)
Pizza.create(
    name: "Hawaiian",
    ingredients: "Dough, Sauce, Cheese, Ham, Pineapple "
)
Pizza.create(
    name: "Meat Lovers",
    ingredients: "Dough, Sauce, Cheese, Pepperoni, Sausage, Meatballs, Mushrooms"
)
Pizza.create(
    name: "Frutti di mare",
    ingredients: "Dough, Sauce, Cheese, Tuna, Shrimp, Mussels"
)
Pizza.create(
    name: "Veggie",
    ingredients: "Dough, Sauce, Cheese, Red Peppers, Green Peppers, Onions, Mushrooms"
)

    
      
puts "🍕 Done seeding!"
