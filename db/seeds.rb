# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredient = JSON.parse(ingredient_serialized)
ingredient["drinks"].each do |element|
  puts "showing #{element['strIngredient1']}"
  new_ingredient = Ingredient.create( name: element['strIngredient1'])
end


# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")


# data = JSON.parse(serialized_data)
# data['drinks'].each do |ingredient|
#   puts "Printing #{ingredient['strIngredient1']}"
#   new_ingredient = Ingredient.new( name: ingredient['strIngredient1'] )
#   new_ingredient.save!
# end


