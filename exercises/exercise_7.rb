require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true}, :inclusion => {:in => 40..200}
end


class Store < ActiveRecord::Base
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :must_carry_apparel

  def must_carry_apparel
    if (!mens_apparel && !womens_apparel)
      errors.add(:mens_apparel, "must carry either")
      errors.add(:womens_apparel, "must carry either")
    end
  end
end

puts "Enter new store name"

@newemployee = Employee.create(first_name: "jon", last_name: "doe",hourly_rate: 35)
puts @newemployee.errors.messages

@newStore = Store.create(name: gets.chomp)
puts @newStore.errors.messages


