class Show
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:)
        @name = name
        @@all << self
    end

    attr_reader :name

    def episodes
        Episode.all.select{|episode| episode.show == self}
    end

    def on_the_big_screen
        Movie.all.select{|movie| movie.name == self.name}
    end
end