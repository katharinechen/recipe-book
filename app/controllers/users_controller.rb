class UsersController < ApplicationController

  def index
    @users = User.all
    render('/users/index.html.erb')
  end

  def new
    @user = User.new
    render('/users/new.html.erb')
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:alert] = "#{@user.name} was added to Recipe Book. Thank you."
      redirect_to("/users/#{@user.id}")
    else
      render('/users/new.html.erb')
    end
  end

  def show
    @user = User.find(params[:id])
    render('users/index.html.erb')

    @user_recipes = Recipe.find_by(user_id: @user.id)
  end

  def edit
    @user = User.find(params[:id])
    render('/users/edit.html.erb')
  end

  def update
    @user = User.find(params[:id])

    if @user.update(params[:user])
      flash[:alert] = "Information for #{@user.name} was updated. Thank you."
      redirect_to("/users/#{@user.id}")
    else
      render('/users/edit.html.erb')
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "#{@user.name} has been deleted. Thank you."
    redirect_to('/')
  end
end
