require "CSV"

class Photograph 
    attr_reader :id, :name, :artist_id, :year
   
    def initialize(id, name, artist_id, year)
        @id = id.to_s
        @name = name.to_s
        @artist_id = artist_id.to_s
        @year = year.to_s
    end
end

