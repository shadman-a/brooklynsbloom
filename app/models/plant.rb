class Plant < ApplicationRecord
  has_many :carts
  has_many :buyers, through: :carts
  
  belongs_to :shop, optional: true
end
