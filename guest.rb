class Guest

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select {|trip| trip.guest == self}
  end

  def listings
    trips.map {|trip| trip.listing}
  end

  def trip_count
    trips.count
  end

  #returns an array of all guests who have made over 1 trip
  def self.pro_traveller
    @@all.select {|guest| guest.trip_count > 1 }
  end

  #takes an argument of a name (as a string), returns the all guests with that name
  def self.find_all_by_name(name)
    @@all.select {|guest| guest.name == name}
  end

end
