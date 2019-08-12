class Movie
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:, manager:)
        @name = name
        @manager = manager
        @@all << self
    end

    attr_reader :name, :manager

    def characters
        Character.all.select{|character| character.manager == self.manager}
    end

    def actors
        characters.map {|character| character.actor}
    end

    def self.most_actors
        @@all.max_by{|movie| movie.actors.count}
    end
end