class Character
    attr_reader :name, :actor

    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor

        @@all << self
    end

    def self.all
        @@all
    end

    def movie_roles
        MovieRole.all.select{|role| role.character == self}
    end

    def show_roles
        ShowRole.all.select{|role| role.character == self }
    end

    def movie_and_show_roles
        (movie_roles << show_roles).flatten
    end

    def movies
        movie_roles.map{|role| role.movie }
    end

    def shows
        show_roles.map{|role| role.show }
    end

    def movies_and_shows
        (movies << shows).flatten
    end

    def self.most_appearances
        Character.all.max_by{|character| character.movies_and_shows.count }
    end
end