require "CSV"

class Artist
    attr_reader :id, :name, :born, :died, :country
    def initialize(id, name, born, died, country)
        @id = id.to_s
        @name = name.to_s
        @born = born.to_s
        @died = died.to_s
        @country = country.to_s
    end

    def age_at_death
        @died.to_i - @born.to_i
    end
end

``