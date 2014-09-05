require 'rails_helper'

describe Recipe do
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }
  it { should have_many :portions }

  it "should list all of the ingredients in a recipe through portions" do
  	new_ingredient = Ingredient.create(name: "Pasta")
  	new_ingredient1 = Ingredient.create(name: "Cheese")
  	recipe_test = Recipe.create(name: "Mac & Cheese", content: "Cook it")
  	new_portion1 = Portion.create(ingredient_id: "#{new_ingredient.id}", quantity: 1, unit_of_measurement: "g", recipe_id: "#{recipe_test.id}")
  	expect(recipe_test.ingredients).to eq [new_ingredient]
  end
end
