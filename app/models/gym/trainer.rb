class Trainer
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def clients
        Client.all.select{|client| client.trainer == self }
    end

    def bookings
        Booking.all.select{|booking| booking.trainer == self }
    end

    def locations
        bookings.map{|booking| booking.location }.uniq
    end

    def self.most_clients
        all.max_by{|trainer| trainer.clients.size }
    end
end