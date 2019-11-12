require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Yaletown", annual_revenue: 190000, mens_apparel: true, womens_apparel: true)

totalstore = Store.calculate(:count, :all)

puts ">>>>>>>> resultCount: #{totalstore}" 

@menstores = Store.where(mens_apparel: true).order(id: :desc)

@menstores.each do |store|
   print "name: #{store[:name]}, "
   print "revenue: #{store[:annual_revenue]}"
   puts ""
   end

@womenstores = Store.where(womens_apparel: true, annual_revenue: 0..1000000).order(name: :desc)

@womenstores.each do |store|
   print "name: #{store[:name]}, "
   print "revenue: #{store[:annual_revenue]}"
   puts ""
   end
