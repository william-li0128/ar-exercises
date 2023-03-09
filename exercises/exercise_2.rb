require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# Load the first store
@store1 = Store.find(1)

# Load the second store
@store2 = Store.find_by(id: 2)

# Update @store1 instance in the database
@store1.update(name: "BurnabyBranch")