class User < ActiveRecord::Base

  validates :name, presence: true

  has_many :recipes
  validates_associated :recipes 
  default_scope { order('name') }

end
