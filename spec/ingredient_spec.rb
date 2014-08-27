require 'rails_helper'

describe Ingredient do
  it { should validate_presence_of :name }

  it "should order the ingredients by abc order" do 
  	new_ingredient1 = Ingredient.create(name: "Salt")
  	new_ingredient = Ingredient.create(name: "Pepper")
  	expect(Ingredient.all).to eq [new_ingredient, new_ingredient1]
  end 
end
