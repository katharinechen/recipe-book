class Recipe < ActiveRecord::Base
  validates :name, presence: true
  validates :content, presence: true

  belongs_to :user
  validates :user, presence: true

  has_many :portions
  validates_associated :portions

  has_many :ingredients, through: :portions 

  accepts_nested_attributes_for :portions 

end





