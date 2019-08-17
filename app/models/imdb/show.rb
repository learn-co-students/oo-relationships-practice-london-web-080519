class Show
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
        ShowRole.all.select{|role| role.show == self }
    end

    def characters
        roles.map{|role| role.character }
    end

    def actors
        characters.map{|character| character.actor }.uniq
    end

    def on_the_big_screen
        Movie.all.find{|movie| movie.title == self.title }
    end
end