Rails.application.routes.draw do
  match('/', :via => :get, :to => 'application#index')
  match('/index', :via => :get, :to => 'application#index')

  match('/user/new', :via => :get, :to => 'user#new')
  # match('/users:id', :via => :get, :to => 'user#show')
end
