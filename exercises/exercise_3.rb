require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# Load the third store (into `@store3`)
@store3 = Store.find(3)

# delete the store from the database.
@store3.destroy

# 3. Verify that the store has been deleted
puts Store.count