class Ingredient < ActiveRecord::Base

  validates :name, presence: true
  default_scope { order('name') } 

  has_many :recipes, through: :portions

end
