class Listing

attr_accessor :city

@@all = []

  def initialize(city)
    @city = city
    @@all << self
  end

  def guests
    trips = Trip.all.select do |trip|
      trip.listing == self
    end
    trips.map do |trip|
      trip.guest
    end
  end

  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end
  end

  def trips_count
    trips = Trip.all.select do |trip|
      trip.listing == self
    end
    trips.size
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    @@all.select do |listing|
      listing.city == city
    end
  end

  def self.most_popular
    listings = Trip.all.select do |trip|
      trip.listing
    end
    listings.mode
  end

end
