require_relative '../config/environment.rb'

jeff = User.new("Jeff")
ferris = User.new("Ferris")
david = User.new("David")

pasta = Recipe.new("Chicken Carbonara")
burrito = Recipe.new("Chipotle Chicken Burrito")
pizza = Recipe.new("Pepperoni")

flour = Ingredient.new("Flour")
chicken = Ingredient.new("Chicken")
tomato = Ingredient.new("Tomato")
cheese = Ingredient.new("Cheese")
pepperoni = Ingredient.new("Pepperoni")

RecipeCard.new(jeff, pasta)
RecipeCard.new(jeff, burrito)
RecipeCard.new(jeff, pizza)
RecipeCard.new(ferris, pasta)
RecipeCard.new(ferris, pizza)
RecipeCard.new(david, burrito)
RecipeCard.new(david, pizza)

RecipeIngredient.new(pasta, flour)
RecipeIngredient.new(pasta, chicken)
RecipeIngredient.new(pasta, cheese)
RecipeIngredient.new(burrito, flour)
RecipeIngredient.new(burrito, chicken)
RecipeIngredient.new(burrito, tomato)
RecipeIngredient.new(burrito, cheese)
RecipeIngredient.new(pizza, flour)
RecipeIngredient.new(pizza, pepperoni)
RecipeIngredient.new(pizza, cheese)
RecipeIngredient.new(pizza, tomato)

Allergy.new(jeff, "tree nuts")
Allergy.new(ferris, tomato)
Allergy.new(david, cheese)


binding.pry

Recipe.all
## Recipe.all should return all of the recipe instances##
