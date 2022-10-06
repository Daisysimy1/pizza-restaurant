puts ":pizza: seeding pizzas..."
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
puts ":pizza: seeding restaurants..."
5.times do
    Restaurant.create(
        name:Faker::Restaurant.name,
        address:Faker::Address.street_address
    )
end
puts ":pizza: Adding pizzas to restaurants..."
20.times do
    RestaurantPizza.create(
        price: rand(1..30),
        pizza_id:Pizza.all[rand(Pizza.count)].id,
        restaurant_id: Restaurant.all[rand(Restaurant.count)].id
    )
end
puts ":pizza: Done seeding!"