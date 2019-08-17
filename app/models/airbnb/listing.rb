class Listing
    attr_reader :city, :name

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city

        @@all << self
    end

    def self.all
        @@all
    end

# #trips
#  returns an array of all trips at a listing
    def trips
        Trip.all.select{|trip| trip.listing == self }
    end

# #guests
#   returns an array of all guests who have stayed at a listing
    def guests
        trips.map{|trip| trip.guest }
    end

# #trip_count
#  returns the number of trips that have been taken to that listing
    def trip_count
        trips.count
    end


# .find_all_by_city(city)
#  takes an argument of a city name (as a string) and returns all the listings for that city
    def self.find_all_by_city(city)
        all.find_all{|listing| listing.city == city }
    end


# .most_popular
#  finds the listing that has had the most trips
    def self.most_popular
        # trip_listings = Trip.all.map{|trip| trip.listing }
        # counts = Hash.new(0)
        # trip_listings.each{|listing| counts[listing] += 1}
        # max_count = counts.values.max
        # counts.find{|listing, count| count == max_count }.first

        all.max_by{|listing| listing.trip_count}
    end

end