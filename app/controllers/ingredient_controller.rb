class IngredientController < ApplicationController


  def show
    @ingredient = Ingredient.find(params[:id])
    render('ingredients/show.html.erb')
  end

  def show_all
    @ingredients = Ingredient.all
    render('ingredients/show_all.html.erb')
  end

  def new
    @ingredient = Ingredient.new
    render('ingredients/new.html.erb')
  end

  def create
    @ingredient = Ingredient.new(params[:ingredient])

    if @ingredient.save
      redirect_to('/ingredients')
    else
      render('ingredients/new.html.erb')
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
    render('ingredients/edit.html.erb')
  end

  def update
    @ingredient = Ingredient.find(params[:id])

    if @ingredient.update(params[:ingredient])
      redirect_to('/ingredients/#{@ingredient.id}')
    else
      render('ingredients/edit.html.erb')
    end
  end

  def delete
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to('/ingredients')
  end

end
