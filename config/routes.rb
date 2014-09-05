Rails.application.routes.draw do
  match('/', :via => :get, :to => 'application#index')
  match('/index', :via => :get, :to => 'application#index')

  match('/users', :via => :get, :to => 'users#index')
  match('/users/new', :via => :get, :to => 'users#new')
  match('/users', :via => :post, :to => 'users#create')
  match('/users/:id', :via => :get, :to => 'users#show')
  match('/users/:id/edit', :via => :get, :to => 'users#edit')
  match('/users/:id', :via => [:patch, :put], :to => 'users#update')
  match('/users/:id', :via => :delete, :to => 'users#destroy')


  match('/ingredients', :via => :get, :to => 'ingredients#index ')
  match('/ingredients/new', :via => :get, :to => 'ingredients#new')
  match('/ingredients/:id', :via => :get, :to => 'ingredients#show')
  match('/ingredients', :via => :post, :to => 'ingredients#create')
  match('/ingredients/:id/edit', :via => :get, :to => 'ingredients#edit')
  match('/ingredients/:id', :via => [:patch, :put], :to => 'ingredients#update')
  match('/ingredients/:id', :via => :delete, :to => 'ingredients#destroy')

  match('/recipes', :via => :get, :to => 'recipes#index ')
  match('/recipes/new', :via => :get, :to => 'recipes#new')
  match('/recipes', :via => :post, :to => 'recipes#create')
  match('/recipes/:id', :via => :get, :to => 'recipes#show')
  match('/recipes/:id/edit', :via => :get, :to => 'recipes#edit')
  match('/recipes/:id', :via => [:patch, :put], :to => 'recipes#update')
  match('/recipes/:id', :via => :delete, :to => 'recipes#destroy')

end
