# The method below returns an array of the brothers names in all caps using the method #each.
# # Your Task: Update this method to use #map. 

def kennedy_brothers
    brothers = ["Robert", "Ted", "Joseph", "John"]
  
    caps_brothers = brothers.map do |name| 
      name.upcase 
    end  
    caps_brothers
end

p kennedy_brothers