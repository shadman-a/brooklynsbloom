class Plant < ApplicationRecord
  has_many :carts
  has_many :buyers, through: :carts
  
  belongs_to :shop, optional: true

  def self.by_plant(plant_id)
    where(plant: plant_id)
  end

  def self.where_high
    Plant.all.where(brightness: "High")
  end

  def self.where_medium
    Plant.all.where(brightness: "Medium")
  end

  def self.where_low
    Plant.all.where(brightness: "Low")
  end

end
