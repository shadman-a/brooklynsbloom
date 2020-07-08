class Buyer < ApplicationRecord
    has_many :carts
    has_many :plants, through: :carts

    has_secure_password

end
