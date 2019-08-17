class Client
    attr_reader :name, :trainer

    @@all = []

    def initialize(name, trainer)
        @name = name
        @trainer = trainer

        @@all << self
    end

    def self.all
        @@all
    end

    def assign_trainer(trainer) # Should I initialize?
        @trainer = trainer
    end
end