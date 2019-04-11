require_relative '../config/environment.rb'
require 'date'

jeff = User.new("Jeff")
ferris = User.new("Ferris")
david = User.new("David")

pasta = Recipe.new("Chicken Carbonara")
burrito = Recipe.new("Chipotle Chicken Burrito")
pizza = Recipe.new("Pepperoni Pizza")
taco = Recipe.new("Chicken Taco")

flour = Ingredient.new("Flour")
chicken = Ingredient.new("Chicken")
tomato = Ingredient.new("Tomato")
cheese = Ingredient.new("Cheese")
pepperoni = Ingredient.new("Pepperoni")

RecipeCard.new(jeff, pasta, Time.now, 4)
RecipeCard.new(jeff, burrito, Time.now, 5)
RecipeCard.new(jeff, pizza, Time.now, 5)
RecipeCard.new(ferris, pasta, Time.now, 3)
RecipeCard.new(ferris, pizza, Time.now, 5)
RecipeCard.new(ferris, burrito, Time.now, 3)
RecipeCard.new(ferris, taco, Time.now, 2)
RecipeCard.new(david, burrito, Time.now, 5)
RecipeCard.new(david, pizza, Time.now, 3)

RecipeIngredient.new(pasta, flour)
RecipeIngredient.new(pasta, chicken)
# RecipeIngredient.new(pasta, cheese)
RecipeIngredient.new(burrito, flour)
RecipeIngredient.new(burrito, chicken)
RecipeIngredient.new(burrito, tomato)
RecipeIngredient.new(burrito, cheese)
RecipeIngredient.new(pizza, flour)
RecipeIngredient.new(pizza, pepperoni)
RecipeIngredient.new(pizza, cheese)
RecipeIngredient.new(pizza, tomato)

Allergy.new(jeff, flour)
Allergy.new(ferris, tomato)
Allergy.new(david, cheese)
Allergy.new(david, flour)
Allergy.new(ferris, cheese)
# Allergy.new(jeff, flour)



binding.pry

Recipe.all
## Recipe.all should return all of the recipe instances##
