# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Add Recipe for Mac and Cheese Recipe 

	User.create(name: "Katharine Chen")
	User.create(name: "Bob Miller")
	User.create(name: "Susan Rubenstein")

	Ingredient.create(name: "Whole Milk")
	Ingredient.create(name: "Butter Unsalted")
	Ingredient.create(name: "Flour")
	Ingredient.create(name: "Salt") 
	Ingredient.create(name: "Macaroni")
	Ingredient.create(name: "Chedder Cheese")
	Ingredient.create(name: "Pecorino Romano Cheese")

	Recipe.create(name: "Mac & Cheese", content:  
		"(1) Heat the milk in a medium saucepan over medium-high heat until it just comes to a simmer, then turn off the heat and set aside.
		 (2) In a large, heavy-bottomed saucepan, melt the butter over medium heat. Add the flour and whisk constantly until the mixture turns light brown in color, about 3 minutes. Remove from the heat.
		 (3) While whisking constantly, slowly add the hot milk to the flour mixture until evenly combined and smooth. (It will get very thick when you first add the milk, then thin out.)
		 (4) Return the saucepan to medium-high heat and while whisking constantly, cook until the sauce thickens and coats the back of a spoon, about 2 to 3 minutes. Stir in 1 tablespoon of the salt, taste, and add the remaining salt as desired. Remove from the heat and set aside.
		 (5) Bring a large pot of heavily salted water to a boil over high heat. Add the pasta and cook until it’s almost al dente (just on the edge of being underdone), then drain and rinse with cold water; set aside. (If you plan to top the mac ‘n’ cheese with panko and bake it, heat the oven to 400°F and arrange a rack in the middle.)
		 (6) Place the reserved saucepan of béchamel over medium heat and stir in both cheeses just until melted and smooth. Add the pasta and continue cooking, stirring occasionally, until the pasta is heated through and steaming, about 2 to 4 minutes. Serve immediately or, if baking, transfer to a 5-quart baking dish, sprinkle with the panko, and bake until bubbling and brown on top, about 25 to 30 minutes.",
		 user_id: 1)

	Portion.create(ingredient_id: 1, quantity: 1, unit_of_measurement: "quart", recipe_id: 1)
	Portion.create(ingredient_id: 2, quantity: 8, unit_of_measurement: "tablespoons", recipe_id: 1)
	Portion.create(ingredient_id: 3, quantity: 0.5, unit_of_measurement: "cup", recipe_id: 1)
	Portion.create(ingredient_id: 4, quantity: 2, unit_of_measurement: "tablespoons", recipe_id: 1)
	Portion.create(ingredient_id: 5, quantity: 1, unit_of_measurement: "pound", recipe_id: 1)
	Portion.create(ingredient_id: 6, quantity: 8, unit_of_measurement: "ounces", recipe_id: 1)
	Portion.create(ingredient_id: 7, quantity: 3, unit_of_measurement: "ounces", recipe_id: 1)

