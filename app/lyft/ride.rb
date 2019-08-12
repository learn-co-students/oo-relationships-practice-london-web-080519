class Ride
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:, driver:, passenger:, distance:)
        @name = name
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    attr_accessor :name, :driver, :passenger, :distance

    def self.number_of_rides
        @@all.count
    end

    def self.total_distance
        @@all.map{|ride| ride.distance}.sum
    end

    def self.average_distance
        self.total_distance.to_f / self.number_of_rides.to_f
    end
end