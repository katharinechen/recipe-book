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

end
