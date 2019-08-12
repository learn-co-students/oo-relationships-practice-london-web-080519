class Location
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:)
        @name = name
        @@all << self
    end

    attr_reader :name

    def workouts
        Workout.all.select{|workout| workout.location == self}.uniq
    end

    def trainers
        workouts.map{|workout| workout.trainer}.uniq
    end

    def clients
        #trainers.map{|trainer| trainer.clients}.uniq
        workouts.map{|workout| workout.client}.uniq
    end

    def count_clients
        clients.count
    end

    def self.least_clients
        @@all.min_by{|location| location.count_clients}
    end
end