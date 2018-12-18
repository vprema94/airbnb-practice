require 'pry'
require_relative './guest'
require_relative './listing'
require_relative './trip'

vanessa = Guest.new("Vanessa")
anisha = Guest.new("Anisha")

seattle = Listing.new("Seattle")
boston = Listing.new("Boston")

trip1 = Trip.new(vanessa, boston)
trip2 = Trip.new(anisha, boston)
trip3 = Trip.new(anisha, seattle)
trip4 = Trip.new(anisha, seattle)

binding.pry
