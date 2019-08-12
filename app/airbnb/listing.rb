class Listing
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:, city:)
        @name = name
        @city = city
        @@all << self
    end

    attr_reader :city
    attr_accessor :name
    
    def trips
        Trip.all.select{|trip| trip.listing == self}
    end

    def trip_count
        trips.count
    end

    def guests
        trips.map{|trip| trip.guest}
    end

    def self.find_all_by_city(city:)
        @@all.select{|listing| listing.city == city}
    end

    def self.most_popular
        @@all.max_by{|listing| listing.trip_count}
        # @@all.group_by{|listing| listing.trip_count}.max_by{|key, values| key}[1]
    end
end