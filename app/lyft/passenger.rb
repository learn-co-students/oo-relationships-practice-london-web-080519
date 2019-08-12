class Passenger
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:)
        @name = name
        @@all << self
    end

    attr_reader :name 

    def rides
        Ride.all.select{|ride| ride.passenger == self}
    end

    def drivers
        rides.map{|ride| ride.driver}
    end

    def total_distance
        rides.map{|ride| ride.distance}.sum
    end

    def self.premium_members
        @@all.select{|passenger| passenger.total_distance > 100}
    end
end