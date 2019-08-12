class Bakery
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:)
        @name = name
        @@all << self
    end

    attr_accessor :name

    def desserts
        Dessert.all.select{|dessert| dessert.bakery == self}
    end
    
    def ingredients
        desserts.map{|dessert| dessert.ingredients}.flatten
    end

    def shopping_list
        ingredients.map{|ingredient| ingredient.name}.join(", ")
    end
end