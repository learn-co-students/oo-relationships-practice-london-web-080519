class Dessert
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:, bakery:)
        @name = name
        @bakery = bakery
        @@all << self
    end

    attr_accessor :name, :bakery

    def ingredients
        Ingredient.all.select{|ingredient| ingredient.dessert == self}
    end

    def calories
        ingredients.map{|ingredient| ingredient.calories}.sum
    end
end