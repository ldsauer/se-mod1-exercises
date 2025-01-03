animals = {"dogs" => 3, "cats" => 5, "iguanas" => 2}

# 1. return the value of dogs
p animals["dogs"]
# 2. add 3 parakeets
p animals["parakeets"] = 3
p animals
# 3. increase the amount of cats by 2
p animals["cats"] += 2

pet_names = ["Fela", "Spot", "Patch", "Willy"]

# 1. add “Claude” to the end of the array
p pet_names << "Claude"
# 2. access the first name in the list
p pet_names[0]
# 3. access the last name in the list
p pet_names[4]
p pet_names.last
# 4. remove “Fela” from the list
p pet_names.shift #removes first name from the index
p pet_names
