class Ingredient
    @@all = []

    def self.all
        @@all
    end

    def initialize(name:, dessert:, calories:)
        @name = name
        @dessert = dessert
        @calories = calories
        @@all << self
    end

    attr_accessor :name, :dessert, :calories

    def bakery
        dessert.bakery
    end

    def self.find_all_by_name(name:)
        @@all.select{|ingredient| ingredient.name =~ /#{name}/}
    end
end