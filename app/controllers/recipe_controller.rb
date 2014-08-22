class RecipeController < ApplicationController

  def show
    @recipe = Recipe.find(params[:id])
    render('recipes/show.html.erb')
  end

  def show_all
    @recipes = Recipe.all
    render('recipes/show_all.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end

  def create
    @recipe = Recipe.new(params[:recipe])

    if @recipe.save
      redirect_to('/recipes')
    else
      render('recipes/new.html.erb')
    end
  end


end
