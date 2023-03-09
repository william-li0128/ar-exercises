require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# Output the total revenue for the entire company
puts "Total annual revenue is $#{Store.sum(:annual_revenue)}."

# output the average annual revenue for all stores
puts "Average annual revenus is $#{Store.average(:annual_revenue)}."

# Output the number of stores that are generating $1M or more in annual sales.
puts @top_stores = Store.where(annual_revenue: 1000000..).count