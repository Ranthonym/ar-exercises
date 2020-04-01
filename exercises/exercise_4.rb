require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create(name: "Surrey", annual_revenue: 224000 , mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000 , mens_apparel: true, womens_apparel: true)

puts Store.count
@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)


for store in @mens_stores
  puts "#{store.name}: #{store.annual_revenue}"
end

@query2 = Store.where(["womens_apparel = :bool and annual_revenue < :rev", { bool: true, rev: 1000000 }])


for store in @query2
  puts "#{store.name}: #{store.annual_revenue}"
end

