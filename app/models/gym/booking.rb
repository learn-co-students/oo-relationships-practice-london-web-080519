class Booking
    attr_reader :trainer, :location, :client

    @@all = []

    def initialize(trainer, client, location)
        @trainer = trainer
        @location = location
        @client = client

        @@all << self
    end

    def self.all
        @@all
    end
end