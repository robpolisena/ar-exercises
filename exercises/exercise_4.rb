require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
stores = Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true)

stores = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false)

stores = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@low_revenue_women_apparel_stores = Store.where('womens_apparel = true AND annual_revenue < 1000000')

puts @mens_stores.count  
puts "store names and annual revenue"

@mens_stores.each {|store|
puts  "Location: #{store.name}, annual revenue #{store.annual_revenue}"
}

puts "stores that carry women's apparel and are generating less than $1M in annual revenue" 

@low_revenue_women_apparel_stores.each {|store|
puts " Location: #{store.name}, annual revenue #{store.annual_revenue}"
}
