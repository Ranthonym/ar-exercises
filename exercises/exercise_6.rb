require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Nathan", last_name: "Drake", hourly_rate: 60)
@store1.employees.create(first_name: "Samus", last_name: "Aran", hourly_rate: 40)
@store1.employees.create(first_name: "Master", last_name: "Chief", hourly_rate: 65)
@store1.employees.create(first_name: "Richter", last_name: "Belmont", hourly_rate: 60)
@store1.employees.create(first_name: "Gordon", last_name: "Freeman", hourly_rate: 45)
@store1.employees.create(first_name: "Booker", last_name: "Dewitt", hourly_rate: 70)
@store2.employees.create(first_name: "Sam", last_name: "Porter", hourly_rate: 60)
@store2.employees.create(first_name: "Solid", last_name: "Snake", hourly_rate: 55)
@store2.employees.create(first_name: "Adam", last_name: "Jensen", hourly_rate: 60)
@store2.employees.create(first_name: "Kiryu", last_name: "Kazuma", hourly_rate: 45)
@store2.employees.create(first_name: "Andrew", last_name: "Ryan", hourly_rate: "abc")

puts Employee.count