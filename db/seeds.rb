# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create email: 'cming.xu@gmail.com', password: 'xuchunming'
user.site.create name: '水润湿滑面膜小店', contact_mobile: '13699236168', contact_name: '徐春明',
  contact_address: '湖北恩施某地某小区'

p1 = user.products.create name: "最好用的面膜", price: 198,
  discount_price: 198,
  quantity: 1000,
  quantity_remain: 22


p2 = user.products.create name: "东北羊肉串", price: 198,
  discount_price: 198,
  quantity: 1000,
  quantity_remain: 22

user.orders.create product: p1
user.orders.create product: p2
