class Character
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:, actor:, manager: nil, episode: nil)
        @name = name
        @actor = actor
        @manager = manager
        @episode = episode
        @@all << self
    end

    attr_reader :name, :actor, :manager, :movie, :episode

    def movies
        Movie.all.select{|movie| movie.manager == self.manager}
    end

    def shows
        Show.all.select{|show| show.episodes == episode}
    end

    def self.most_appearances
        @@all.max_by{|character| character.movies.count + character.shows.count}
    end
end