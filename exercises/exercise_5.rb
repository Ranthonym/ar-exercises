require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

puts "total annual revenue: #{Store.sum("annual_revenue")}"
puts "average annual revenue: #{Store.average("annual_revenue")}"

puts "All stores over $1M annual revenue: #{Store.where(["annual_revenue > :rev", {rev: 1000000 }]).count}"
