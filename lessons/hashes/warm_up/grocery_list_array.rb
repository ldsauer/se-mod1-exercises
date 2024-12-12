fridge_items_1 = ["milk", "eggs", "eggs","eggs", "eggs",
                  "eggs", "eggs", "avocado", "avocado", "tortilla",
                  "tortilla", "tortilla", "tortilla", "tortilla",
                  "tortilla", "tortilla", "tortilla", "tortilla"]

# Looking at the collection above:

# 1. What is problematic about listing `fridge_items_1`
# as an array structured grocery list?

# 2. What might be a more readable way to structure this?

# A Hash is a way that we can store related pices of information
# - Key (must be unique, can be any datatype)
# - Value (can be any datatype, one value per key)
# - key/value pair

grocery_list = { "eggs" => 6,"milk" => 1,"avocado" => 6, "tortilla" => 9 }
grocery_list["avocados"]
grocery_list["avocados"] = 3
