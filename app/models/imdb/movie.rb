class Movie
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def self.all
        @@all
    end

    def roles
        MovieRole.all.select{|role| role.movie == self }
    end

    def characters
        roles.map{|role| role.character }
    end

    def actors
        characters.map{|character| character.actor }.uniq
    end

    def self.most_actors
        all.max_by{|movie| movie.actors.length }
    end
end