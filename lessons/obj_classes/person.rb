class Person
    attr_reader :name, :age, :favorite_food

    def initialize(name, age)
        @name = name
        @age = age
        @favorite_food = []
    end

    def add_favorite_food(favorite_food)
        @favorite_food << favorite_food
    end

    def add_birthday(birthday)
        @birthday = birthday
    end
end