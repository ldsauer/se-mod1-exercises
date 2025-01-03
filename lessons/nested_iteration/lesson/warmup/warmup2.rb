require "pry"


pet_inventory = {
 kat: [:cat, :cat, :cat],
 bob: [:fish, :snake, :gerbil],
 stoney: [:cat, :dog],
 gerri: [:dog, :dog],
 jamison: [:bird, :dog]
}

# get all the pet types owned by an owner   
# [:cat, :fish, :snake, :gerbil, :dog, :bird]

uniq_types = []

pet_inventory.each do |owner, pet_types|
    pet_types.each do |type|
        if !uniq_types.include?(type)
            uniq_types << type
        end
    end
end

p uniq_types











# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]


# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings

animals = []

nested_animals.each do |animal_group|
    animal_group.each do |animal|
        animals << animal.to_s
    end
end

p animals



# 2. Return an unnested array of animals with length >= 4

long_animals =[]

nested_animals.each do |animal_group|
    animal_group.each do |animal|
        if animal.length >= 4
            long_animals << animal
        end
    end
end

p long_animals

# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }


