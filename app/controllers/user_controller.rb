class UserController < ApplicationController

  def new
    @user = User.new
    render('/user/new.html.erb')
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to("/user/#{@user.id}")
    else
      render('/user/new.html.erb')
    end
  end

  def show
    @user = User.find(params[:id])
    render('user/show.html.erb')
  end

  def edit
    @user = User.find(params[:id])
    render('/user/edit.html.erb')
  end

  def update
    @user = User.find(params[:id])

    if @user.update(params[:user])
      redirect_to("/user/#{@user.id}")
    else
      render('/user/edit.html.erb')
    end
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy

    redirect_to('/')
  end

end
