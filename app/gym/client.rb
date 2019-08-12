class Client
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:, trainer: nil)
        @name = name
        @trainer = trainer
        @@all << self
    end

    attr_reader :name, :trainer

    def workouts
        #trainer.workouts
        Workout.all.select{|workout| workout.client == self}
    end

    def locations
        workouts.map{|workout| workout.location}.uniq
    end

    def assign_trainer=(trainer)
        @trainer = trainer
    end
end