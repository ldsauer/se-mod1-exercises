
class Bag
    attr_reader :empty, :count, :candies

    def initialize
        @empty = true
        @count = 0
        @candies = []
    end

    def empty?
        @empty
    end
end
