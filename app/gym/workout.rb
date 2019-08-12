class Workout
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:, trainer:, location:, client:) #####
        @name = name
        @trainer = trainer
        @location = location
        @client = client    #####
        @@all << self
    end

    attr_reader :name, :trainer, :location, :client #####
end