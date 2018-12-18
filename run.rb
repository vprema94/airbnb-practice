require 'pry'
require_relative './guest'
require_relative './listing'
require_relative './trip'

#write your testing code & variables here!

tez = Guest.new("Tez")
blair = Guest.new("Blair")
cory = Guest.new("Cory")

list1 = Listing.new("House","Toronto")
list2 = Listing.new("Apartment","Tokyo")
list3 = Listing.new("Loft","uk")
list4 = Listing.new("Studio", "Thailand")

trip1 = Trip.new(tez,list1)
trip2 = Trip.new(blair, list2)
trip3 = Trip.new(tez,list4)
trip4 = Trip.new(cory, list1)

binding.pry
