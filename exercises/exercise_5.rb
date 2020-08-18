#require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

total_revenue = Store.sum(:annual_revenue)
puts "Total revenue is: $#{total_revenue}"

average_revenue = Store.average(:annual_revenue).to_i
puts "Average revenue is: $#{average_revenue}"

high_revenue = Store.where('annual_revenue > 1000000').count

puts "There are a total of #{high_revenue} stores that generate more than $1M in annual revenue"
