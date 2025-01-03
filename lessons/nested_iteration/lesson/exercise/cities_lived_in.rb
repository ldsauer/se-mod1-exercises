require "pry"

cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}


# Problem #1: 
# Get a unique list of all of the cities that these humans have lived in  
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]
# city_list = []

# cities_lived_in.each do |person, cities|
#     cities.each do |city|
#         if !city_list.include?(city)
#             city_list << city
#         end
#     end
# end

# p city_list



# Problem #2: 
# Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# names of the humans who've lived in Philadelphia.

# [:michaela, :mike, :alex]
# or
# ["Michaela", "Mike", "Alex"]

# lived_in_philly = []

# cities_lived_in.each do |person, cities|
#     cities.each do |city|
#         if city.include?("Philadelphia")
#             lived_in_philly << person
#         end
#     end
# end
 
# p lived_in_philly




# Problem #3: 
# Create a hash that has the city as a key, and the number of people that live in it as it's value: 

# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }

population = {}

cities_lived_in.each do |person, cities|
    cities.each do |city|
        # create the key "city" with a starting value
        if population[city].nil? 
            population[city] = 0
        end
        # increaase the value of the key "city"
        population[city] += 1
    end
end

p population