class Episode
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:, show:)
        @name = name
        @show = show
        @@all << self
    end

    attr_reader :name, :show

    def characters
        Character.all.select{|character| character.episode == self}
    end
end