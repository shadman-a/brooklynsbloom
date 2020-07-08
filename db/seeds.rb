# Buyer.destroy_all
# Shop.destroy_all
# Plant.destroy_all
# Cart.destroy_all


Buyer.create(name: Faker::Name.female_first_name, address: Faker::Address.full_address, img_url: "https://images.pexels.com/photos/1897590/pexels-photo-1897590.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
Buyer.create(name: Faker::Name.female_first_name, address: Faker::Address.full_address, img_url: "https://images.pexels.com/photos/4672731/pexels-photo-4672731.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
Buyer.create(name: Faker::Name.female_first_name, address: Faker::Address.full_address, img_url: "https://images.pexels.com/photos/4503736/pexels-photo-4503736.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
Buyer.create(name: Faker::Name.female_first_name, address: Faker::Address.full_address, img_url: "https://images.pexels.com/photos/4503733/pexels-photo-4503733.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
Buyer.create(name: Faker::Name.female_first_name, address: Faker::Address.full_address, img_url: "https://images.pexels.com/photos/3621926/pexels-photo-3621926.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
Buyer.create(name: Faker::Name.male_first_name, address: Faker::Address.full_address, img_url: "https://images.pexels.com/photos/3182771/pexels-photo-3182771.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")

Shop.create(name: "Brooklyn's Bloom", username: "Owner", password_digest: "Brooklyn")

Plant.create(name: "ZZ Plant", size: "Large", description: "Easy care", price: 15, quantity: 70, shop_id: Shop.all.sample.id, img_url: "https://images.pexels.com/photos/3952024/pexels-photo-3952024.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
Plant.create(name: "Eucalyptus", size: "medium", description: "Easy care", price: 20, quantity: 5, shop_id: Shop.all.sample.id, img_url: "https://images.pexels.com/photos/2069428/pexels-photo-2069428.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
Plant.create(name: "Snake Plant", size: "Large", description: "Easy care", price: 70, quantity: 4, shop_id: Shop.all.sample.id, img_url:"https://images.pexels.com/photos/2922353/pexels-photo-2922353.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
Plant.create(name: "Monstera Deliciosa", size: "Large", description: "Bright indirect light", price: 100, quantity: 7, shop_id: Shop.all.sample.id, img_url: "https://images.pexels.com/photos/2001154/pexels-photo-2001154.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
Plant.create(name: "Mini Plant Haul", size: "Small", description: "Our best selling small plants includes 3 small starter plants", price: 50, quantity: 8, shop_id: Shop.all.sample.id,  img_url: "https://images.pexels.com/photos/1005058/pexels-photo-1005058.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")
Plant.create(name: "Succulent", size: "Small", description: "Lots of sunshine", price: 10, quantity: 20, shop_id: Shop.all.sample.id, img_url: "https://images.pexels.com/photos/1903975/pexels-photo-1903975.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500")

6.times do
    Cart.create(buyer_id: Buyer.all.sample.id, plant_id: Plant.all.sample.id)
end
