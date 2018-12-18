class Listing

  attr_reader :city, :type

  @@all = []

  def initialize(type,city)
    @type = type
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select {|trip| trip.listing == self }
  end

  def guests
    trips.map {|trip| trip.guest}
  end

  #returns the number of trips that have been taken to that listing
  def trip_count
     trips.count
  end

  def self.find_all_by_city(city)
    @@all.find_all {|listing| listing.city == city }
  end

  #Find the listing that has the most trips
  def self.most_popular
    @@all.sort_by {|list| list.trip_count}.pop
  end

end
