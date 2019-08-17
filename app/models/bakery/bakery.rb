class Bakery
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

#   #desserts
    def desserts
        Dessert.all.select{|dessert| dessert.bakery == self}
    end

#   #ingredients
    def ingredients
        Ingredient.all.select{|ingredient| desserts.include?(ingredient.dessert)}
    end

#   #average_calories
    def average_calories
        total_calories = desserts.map{|dessert| dessert.calories }.reduce(:+)
        total_calories.to_f / desserts.count
    end

#   #shopping_list
    def shopping_list
        list = "You need to buy: "
        ingredients.each_with_index{|ingredient, index| index < ingredients.length-1 ? list += "#{index+1}. #{ingredient.name}, " : list += "#{index+1}. #{ingredient.name}"}
        list
    end

end