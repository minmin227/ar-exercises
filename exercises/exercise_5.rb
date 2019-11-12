require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

Your code goes here ...
totalrevenue = Store.sum("annual_revenue");
puts ">>>>>>>> totalrevenue: #{totalrevenue}";
totalstore = Store.calculate(:count, :all)
averagerevenue = totalrevenue/totalstore;
puts ">>>>>>>> averagerevenue: #{averagerevenue}";

millionstore = Store.where("annual_revenue > ?", 1000000 )
totalmillionstore = millionstore.calculate(:count, :all)
puts ">>>>>>>>>> totalmillionstore: #{totalmillionstore}"