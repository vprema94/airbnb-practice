class Guest
  attr_accessor :name

  @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def listings
      trips = Trip.all.select do |trip|
        trip.guest == self
      end
      trips.map do |trip|
        trip.listing
      end
    end

    def trips
      Trip.all.select do |trip|
        trip.guest == self
      end
    end

    def trips_count
      trips = Trip.all.select do |trip|
        trip.guest == self
      end
      trips.size
    end

    def self.all
      @@all
    end

    def self.pro_traveller
      @@all.select do |guest|
        guest.trips.size > 1
      end
    end

    def self.find_all_by_name(name)
      @@all.select do |guest|
        guest.name == name
      end
    end

end
