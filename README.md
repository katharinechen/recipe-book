
RECIPE 

As a contributor, I want to post new recipes, so that I can share them with others.

As a contributor, I want to tag my recipes, so that they are easier to find. (Hint: a recipe has many tags, and a tag has many recipes. Another hint: don't be afraid to create several actions for this: one page for creating tags, one page for creating recipes, one page for adding tags to a recipe.)

As a cook, I want to choose a tag and see what recipes have that tag.

As a cook, I want to search through recipes, so that I can find something with a particular ingredient or word. (Hint: use the Textacular gem.)





RAILS BASIC ASSESSMENT 

(1) Build a Rails app with at least two models and deploy it to Heroku. Include CSS from Bootstrap or another theme.

(2) Does your code continue to meet all of the standards from last week?
(3) Are your routes RESTful?
(4) Is there a route for the homepage?
(5) Is your application logic in the models, and do controllers do as little work as possible?
(6) Do you properly use render and redirect?
Are your parameters nested?
(7) Do your forms display errors properly?
(8) Does the user see a flash message after successful form submissions?
(9) Is reused view code factored into partials?
Does the app use the asset pipeline for CSS?





<div class="field">
  <% Category.all.each do |category| %>
    <%= check_box_tag "product[category_ids][]", category.id %>
    <%= category.name %><br/>
  <% end %>
</div>

<form action="demo_form.asp">
<input type="checkbox" name="vehicle" value="Bike"> I have a bike<br>
<input type="checkbox" name="vehicle" value="Car" checked> I have a car
<br><input type="submit" value="Submit">
</form>

I took out the ratings 




<div class="field">
  <%= hidden_field_tag "product[category_ids][]", nil%>
    <% Category.all.each do |category| %>
    <%= check_box_tag "product[category_ids][]", category.id, @product.category_ids.include?(category.id) %>
    <%= category.name %><br/>
  <% end %>
</div> 

















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

