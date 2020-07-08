class Buyer < ApplicationRecord
    has_many :carts
    has_many :plants, through: :carts
end
