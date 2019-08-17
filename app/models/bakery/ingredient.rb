class Ingredient
    attr_reader :name, :calories, :dessert

    @@all = []

    def initialize(name, dessert, calories)
        @name = name
        @calories = calories
        @dessert = dessert

        @@all << self
    end

    def self.all
        @@all
    end

#   #bakery
    def bakery
        dessert.bakery
    end

#   .find_all_by_name(ingredient)
    def self.find_all_by_name(name)
        all.find_all{|ingredient| ingredient.name.include?(name)}
    end

end