require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.where(id: 1)
@store2 = Store.where(id: 2)
@store3 = Store.where(id: 3)

puts @store1.inspect
puts @store2.inspect
puts @store3.inspect

@store1 = Store.find_by(name: 'Burnaby')
@store1.update(name: 'Victoria')
puts @store1.inspect
