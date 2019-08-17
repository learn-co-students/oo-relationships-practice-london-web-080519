class Location
    attr_reader :gym, :place

    @@all = []

    def initialize(gym, place)
        @gym = gym
        @place = place

        @@all << self
    end

    def self.all
        @@all
    end

    def bookings
        Booking.all.select{|booking| booking.location == self }
    end

    def trainers
        bookings.map{|booking| booking.trainer }.uniq
    end

    def clients
        bookings.map{|booking| booking.client }.uniq
    end

    def self.least_clients
        all.min_by{|location| location.clients.count }
    end
    
end