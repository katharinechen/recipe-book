class PortionController < ApplicationController

  def new
    @portion = Portion.new
    render('/portions/new.html.erb')
  end

  def create
    @portion = Portion.new

    if @portion.save
      redirect_to("/portion/#{@portion.id}")
    else
      render('/portion/new.html')
    end
  end

  def destroy
    Portion.find(params[:id]).destroy
  end

end
