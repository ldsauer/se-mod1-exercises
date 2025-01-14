class Dragon
    attr_reader :name, :color, :rider

    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @hungry = true
        @chow_down = 0
    end

    def hungry? 
        if @chow_down >= 3
            false
        else 
            @hungry
        end
    end

    def eat
        @chow_down += 1
    end        
end

