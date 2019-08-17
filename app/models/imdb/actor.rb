class Actor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def characters
        Character.all.select{|character| character.actor == self }
    end

    def movies
        characters.map{ |character| character.movies }.flatten.uniq
    end

    def shows
        characters.map{ |character| character.shows }.flatten.uniq
    end

    def self.most_characters
        all.max_by{|actor| actor.characters.count }
    end
end