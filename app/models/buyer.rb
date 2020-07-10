class Buyer < ApplicationRecord
    has_many :carts
    has_many :plants, through: :carts
    validates :name, presence: true 
    validates :password, presence: true 
    validates :name, uniqueness: true

    has_secure_password

end
