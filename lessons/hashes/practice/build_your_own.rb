# Your turn to create a hash. Make sure to use symbols for the keys.

# Create your hash here
new_band = {}

# Steps
# 1. Create a hash called new_band. - **creating a hash literal**
# 2. Add a bassist to your new_band hash.
new_band[:bassist] = "Chase"
# 3. Find the name of your bassist by accessing the :bassist key in the new_band hash.
puts new_band[:bassist]
# 4. Find the value attached to :vocalist in your hash.
p new_band[:violinist]
# 5. Add a vocalist to your hash.
new_band[:vocalist] = "Jason"
# 6. Add a drummer to your hash.
new_band[:drummer] = "Coral"
# 7. Get all the keys in your Hash. What kind of object does that method return?
p new_band.keys
# 8. Get all the values in your Hash. What kind of object does that method return?
p new_band.values
# 9. Assign a new value to the :vocalist key of your hash.
new_band[:vocalist] = "Gary"
p new_band[:vocalist]
# 10. How has keys changed after the last step? How has values changed?
