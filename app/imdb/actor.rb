class Actor
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:)
        @name = name
        @@all << self
    end

    attr_reader :name

    def characters
        Character.all.select{|character| character.actor == self}
    end

    def self.most_characters
        @@all.max_by{|actor| actor.characters.count}
    end
end