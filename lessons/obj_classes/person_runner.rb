require "./person"

logan = Person.new("logan", "33")
hannah = Person.new("hannah", "27")
beverly = Person.new("bev", "27")

logan.add_favorite_food("pickles")
logan.add_favorite_food("candy")

p logan.name
p logan.favorite_food
p logan.add_birthday("5/20/1991")