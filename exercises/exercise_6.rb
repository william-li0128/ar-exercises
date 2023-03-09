require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Tiffany", last_name: "Zhou", hourly_rate: 100)
@store2.employees.create(first_name: "William", last_name: "Li", hourly_rate: 80)

# fetch only those stores that carry men's apparel
@employees = Employee.all

# Loop through each of these stores and output their name and annual revenue on each line.
@employees.each do |employee|
  puts "#{employee.first_name} #{employee.last_name} from #{employee.store_id} earns $#{employee.hourly_rate} per hour."
end