require 'rails_helper'

describe Ingredient do
  it { should validate_presence_of :name }

  it "should order the ingredients by abc order" do
  	new_ingredient1 = Ingredient.create(name: "Salt")
  	new_ingredient = Ingredient.create(name: "Pepper")
  	expect(Ingredient.all).to eq [new_ingredient, new_ingredient1]
  end

  it "should list all of the recipes that has ingredients through portions" do
  	new_ingredient = Ingredient.create(name: "Pasta")
  	new_ingredient1 = Ingredient.create(name: "Cheese")
  	recipe_test = Recipe.create(name: "Mac & Cheese", content: "Cook it")
  	new_portion1 = Portion.create(ingredient_id: "#{new_ingredient.id}", quantity: 1, unit_of_measurement: "g", recipe_id: "#{recipe_test.id}")
  	expect(new_ingredient.recipes).to eq [recipe_test]
  end


end
