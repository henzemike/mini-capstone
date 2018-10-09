Order.create!([
  {user_id: 2, subtotal: "12.0", tax: "1.08", total: "13.08"},
  {user_id: 2, subtotal: "186.0", tax: "16.74", total: "202.74"},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"},
  {user_id: 2, subtotal: "0.0", tax: "0.0", total: "0.0"}
])
CartedProduct.create!([
  {user_id: 2, product_id: 1, quantity: 3, status: "purchased", order_id: 2},
  {user_id: 2, product_id: 2, quantity: 1, status: "purchased", order_id: 2},
  {user_id: 2, product_id: 1, quantity: 3, status: "destroyed", order_id: nil}
])
Supplier.create!([
  {name: "Fitness Equipment", email: "fe@gmail.com", phone_number: "352-5680"},
  {name: "Fitness Audio", email: "fa@gmail.com", phone_number: "234-6790"}
])
Product.create!([
  {name: "Crusher Wireless Headphone", price: "150.0", description: "Crusher Wireless delivers powerful, dual-channel haptic bass. And with up to 40 hours of battery life, you can enjoy days of Bluetooth® listening before needing to plug in.", Supplier_id: 2},
  {name: "Power Perfect 3 Shoes", price: "130.0", description: "Support shoes that give lifters the edge. They feature a specially engineered die-cut wedge midsole, while the rearfoot gains further stability through the addition of an integral heel support and instep strap. Thanks to a durable synthetic upper and hard-wearing Adiwear outsole, they can take all the punishment you give them.", Supplier_id: 1},
  {name: "Knee Straps", price: "15.0", description: "Straps to help compress the knee while lifting heavy", Supplier_id: 1},
  {name: "Elbow Straps", price: "12.0", description: "Compression straps for the elbows for heavy lifting", Supplier_id: 1},
  {name: "Shorts", price: "12.0", description: "Workout Shorts ", Supplier_id: 1},
  {name: "Tank Top", price: "9.0", description: "Tank Top for working out", Supplier_id: 1},
  {name: "Weight Belt", price: "55.0", description: "Help stabilize your lower back during those heavy squats or dead lifts", Supplier_id: 1},
  {name: "Weight Chain", price: "25.0", description: "Add more weight to your bench or squats by placing these heavy chains on the bar", Supplier_id: 1},
  {name: "Water Jug", price: "3.0", description: "Stay hydrated while working out", Supplier_id: 1},
  {name: "Runner Shoes", price: "120.0", description: "Shoes for running ", Supplier_id: 1},
  {name: "Adidas Hat", price: "35.0", description: "Adidas hat", Supplier_id: 1},
  {name: "Wrist Straps", price: "12.0", description: "straps used for heavy weight lifting", Supplier_id: 1},
  {name: "Beats Studio 3 Wireless", price: "350.0", description: "Introducing the Beats Studio3 Wireless, featuring Pure Adaptive Noise Canceling (Pure ANC) and the Apple W1 chip.", Supplier_id: 2}
])
Category.create!([
  {name: "Exercise Tools"},
  {name: "Exercise Options"}
])
CategoryProduct.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 2},
  {product_id: 2, category_id: 1},
  {product_id: 3, category_id: 1},
  {product_id: 3, category_id: 2},
  {product_id: 1, category_id: 2}
])
Image.create!([
  {photo: "https://images-na.ssl-images-amazon.com/images/I/51W3YqceAWL.jpg", product_id: 1},
  {photo: "https://www.skullcandy.com/shop/headphones/bluetooth-headphones/crusher-wireless", product_id: 2},
  {photo: "https://assets.adidas.com/images/w_600,f_auto,q_auto/7b44b6fb32774deeab2fa82600dc9278_9366/Power_Perfect_3_Shoes_Black_BB6363_01_standard.jpg", product_id: 3}
])
User.create!([
  {name: "dave", email: "dave@gmail.com", password_digest: "$2a$10$HXr1a/bCCt68PqkNPBiWf.hfFJlxMVs2PhtIhUd1QVDJWkZJAmy.q", admin: false},
  {name: "Mike", email: "mike@gmail.com", password_digest: "$2a$10$U7FwryiEs1EdGKWICmzwjOm7Knd2z0fGc7KSsrXCTD78TVsCLmn72", admin: true}
])
