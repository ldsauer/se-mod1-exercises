# always name the class flies with the same name as the class
# goal: only have one class defined in a given file
# name classes with UpperCamelCase

# state (attributes): name, color, magical powers

#behavior: add_magical_power

class Unicorn  
    attr_reader :name, :color, :magical_powers

    def initialize(name, color)
        @name = name
        @color = color
        @magical_powers = []
    end
    
    def add_magical_power(power)
        @magical_powers << power
    end
end