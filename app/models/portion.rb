class Portion < ActiveRecord::Base

  validates :quantity, presence: true
  validates :unit_of_measurement, presence: true

  belongs_to :ingredient
  validates :ingredient_id, presence: true

  belongs_to :recipe
  validates :recipe_id, presence: true
end
