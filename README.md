# Recipe Book

##Current Functionality



##Setup



##Ideal Functionality

*As a contributor, I want to post new recipes, so that I can share them with others.

*As a contributor, I want to tag my recipes, so that they are easier to find. (Hint: a recipe has many tags, and a tag has many recipes. Another hint: don't be afraid to create several actions for this: one page for creating tags, one page for creating recipes, one page for adding tags to a recipe.)

*As a cook, I want to choose a tag and see what recipes have that tag.

*As a cook, I want to give a recipe 1 through 5 stars, so that I can share with others what I think of a recipe.

*As a cook, I want to see recipes ordered by the number of stars they have, so that I can focus on the best ones.

*As a cook, I want to see some new recipes mixed in with the highest-rated ones, so that I can give new recipes with no or few ratings a try. (Hint: make a method that creates an arbitrary weighting between the average number of stars a recipe has, and how old it is.)

*As a cook, I want to search through recipes, so that I can find something with a particular ingredient or word. (Hint: use the Textacular gem.)

##To Do List
-fix double jumbo banner on home page


##GOAL:

-Create New Recipe

<!--   <h3>Ingredients</h3>

  <form action="/portions/create" method="post">
    <label for="ingredient_name">Recipe</label>
    <select name="portion[ingredient_id]">
      <% @ingredients.each do |ingredient| %>
        <option value="<%= ingredient.id %>"><%= ingredient.name %></option>
      <% end %>
    </select>
    <label for="quantity">Quantity</label>
    <input id="quantity" name="portion[quantity]" type="number" value="<%= @portion.quantity %>">
    <label for="unit_of_measurement">Unit of Measurement </label>
    <input id="unit_of_measurement" name="portion[unit_of_measurement]" type="text" value="<%= @portion.unit_of_measurement%>">
  </form>


accepts nested attributes  (for results)
