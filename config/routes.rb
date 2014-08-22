Rails.application.routes.draw do
  match('/', :via => :get, :to => 'application#index')
  match('/index', :via => :get, :to => 'application#index')

  match('/user/new', :via => :get, :to => 'user#new')
  match('/user/create', :via => :post, :to => 'user#create')
  match('/user/:id', :via => :get, :to => 'user#show')
  match('/user/:id/edit', :via => :get, :to => 'user#edit')
  match('/user/:id', :via => [:patch, :put], :to => 'user#update')
  match('/user/:id/delete', :via => :delete, :to => 'user#delete')
end
