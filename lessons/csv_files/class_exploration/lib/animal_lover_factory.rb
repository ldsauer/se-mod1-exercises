require "CSV"
require "animal_lover"
require 'pry'

class AnimalLoverFactory
    def create_animal_lovers(filepath)
        animal_lovers = []
        CSV.foreach(filepath, headers: true, header_converters: :symbol) do |row|
            # binding.pry
            animal_lovers << AnimalLover.new(
                row[:id].to_i,
                row[:first_name], 
                row[:last_name], 
                row[:age].to_i
            )
        end
        animal_lovers
    end
end
