class Ride
    attr_reader :passenger, :driver, :distance

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance

        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        all.map{|ride| ride.distance }.reduce(:+) / all.count
    end

end