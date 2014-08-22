class User < ActiveRecord::Base
  validates :name, presence: true

  def new
    @user = User.new
    render('/user/new.html.erb')
  end

end
