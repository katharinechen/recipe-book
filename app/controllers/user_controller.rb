class UserController < ApplicationController

  def new
    @user = User.new
    render('/user/new.html.erb')
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:alert] = "#{@user.name} was added to Recipe Book. Thank you."
      redirect_to("/user/#{@user.id}")
    else
      render('/user/new.html.erb')
    end
  end

  def show
    @user = User.find(params[:id])
    render('user/show.html.erb')

    @user_recipes = Recipe.find_by(user_id: @user.id)
  end

  def edit
    @user = User.find(params[:id])
    render('/user/edit.html.erb')
  end

  def update
    @user = User.find(params[:id])

    if @user.update(params[:user])
      flash[:alert] = "Information for #{@user.name} was updated. Thank you."
      redirect_to("/user/#{@user.id}")
    else
      render('/user/edit.html.erb')
    end
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "#{@user.name} has been deleted. Thank you."
    redirect_to('/')
  end

  def list
    @users = User.all
    render('/user/all.html.erb')
  end

end
