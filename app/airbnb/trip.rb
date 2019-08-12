class Trip
    @@all = []

    def self.all
        @@all
    end

    def initialize(guest:, listing:, name:)
        @name = name
        @guest = guest
        @listing = listing
        @@all << self
    end

    attr_reader :guest, :listing, :name
end