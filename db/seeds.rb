# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Supplier.create(name: "Fitness Equipment", email: "fe@gmail.com", phone_number: "352-5680")
Supplier.create(name: "Fitness Audio", email: "fa@gmail.com", phone_number: "234-6790")

Product.create!([
  {name: "wrist straps", price: 12, image_url: "https://images-na.ssl-images-amazon.com/images/I/51W3YqceAWL.jpg", description: "straps used for heavy weight lifting", Supplier_id: 1},
  {name: "Crusher Wireless Headphone", price: 150, image_url: "https://www.skullcandy.com/shop/headphones/bluetooth-headphones/crusher-wireless", description: "Crusher Wireless delivers powerful, dual-channel haptic bass. And with up to 40 hours of battery life, you can enjoy days of Bluetooth® listening before needing to plug in.", Supplier_id: 2},
  {name: "Power Perfect 3 Shoes", price: 130, image_url: "https://assets.adidas.com/images/w_600,f_auto,q_auto/7b44b6fb32774deeab2fa82600dc9278_9366/Power_Perfect_3_Shoes_Black_BB6363_01_standard.jpg", description: "Support shoes that give lifters the edge. They feature a specially engineered die-cut wedge midsole, while the rearfoot gains further stability through the addition of an integral heel support and instep strap. Thanks to a durable synthetic upper and hard-wearing Adiwear outsole, they can take all the punishment you give them.", Supplier_id: 1}

])
