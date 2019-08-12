class Driver
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
        Ride.all.select{|ride| ride.driver == self}
    end

    def passengers
        rides.map{|ride| ride.passenger}
    end

    def total_distance
        rides.map{|ride| ride.distance}.sum
    end

    def self.mileage_cap(distance:)
        @@all.select{|driver| driver.total_distance > distance}
    end
end