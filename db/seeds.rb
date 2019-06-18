# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(first_name: 'alfonso', last_name: 'zuñiga', email: 'alf@onso.com')
u1.addresses << Address.create(phone: '123456', address_line_1: 'universidad de los a 123',
                     city: 'Santiago', county: 'chile', zip_code: 1233)
products = []
4.times do |t|
  products << Product.create(brand: 'samsung', model: "Galaxy S#{t + 2}", price: 100000 + t,
                              short_description: 'modern smartrphone from samsung',
                              long_description: 'good phone, nice', product_type: 'handset')
end

o1 = Order.create(address: u1.addresses.first, user: u1)

products.each do |p|
  OrderProduct.create(order: o1, product: p)
end

Product.create(brand: 'Entel', model: "Unlimited", price: 9900,
               short_description: 'Not really',
               long_description: 'good plan, nice', product_type: 'subscription')

Product.create(brand: 'Wom', model: "As you go", price: 3900,
               short_description: 'Shit signal',
               long_description: 'no good plan, no nice', product_type: 'prepaid')