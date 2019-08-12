class Trainer
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:)
        @name = name
        @@all << self
    end

    attr_reader :name

    def clients
        Client.all.select{|client| client.trainer == self}
    end

    def workouts
        Workout.all.select{|workout| workout.trainer == self}.uniq
    end

    def locations
        workouts.map{|workout| workout.location}.uniq
    end

    def count_clients
        clients.count
    end

    def self.most_clients
        @@all.max_by{|trainer| trainer.count_clients}
    end
end