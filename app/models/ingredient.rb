class Ingredient < ActiveRecord::Base

  validates :name, presence: true
  default_scope { order('name') } 

  has_many :portions 
  has_many :recipes, through: :portions
end
