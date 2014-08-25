Rails.application.routes.draw do
  match('/', :via => :get, :to => 'application#index')
  match('/index', :via => :get, :to => 'application#index')

  match('/user/new', :via => :get, :to => 'user#new')
  match('/user/create', :via => :post, :to => 'user#create')
  match('/user/:id', :via => :get, :to => 'user#show')
  match('/user/:id/edit', :via => :get, :to => 'user#edit')
  match('/user/:id', :via => [:patch, :put], :to => 'user#update')
  match('/user/:id/delete', :via => :delete, :to => 'user#delete')

  match('/ingredients', :via => :get, :to => 'ingredient#show_all')
  match('/ingredients/new', :via => :get, :to => 'ingredient#new')
  match('/ingredients/:id', :via => :get, :to => 'ingredient#show')
  match('/ingredients/create', :via => :post, :to => 'ingredient#create')
  match('/ingredients/:id/edit', :via => :get, :to => 'ingredient#edit')
  match('/ingredients/:id', :via => [:patch, :put], :to => 'ingredient#update')
  match('/ingredients/:id/delete', :via => :delete, :to => 'ingredient#delete')

  match('/recipes', :via => :get, :to => 'recipe#show_all')
  match('/recipes/new', :via => :get, :to => 'recipe#new')
  match('/recipes/:id', :via => :get, :to => 'recipe#show')
  match('/recipes/create', :via => :post, :to => 'recipe#create')
  match('/recipes/:id/edit', :via => :get, :to => 'recipe#edit')
  match('/recipes/:id', :via => [:patch, :put], :to => 'recipe#update')
  match('/recipes/:id/delete', :via => :delete, :to => 'recipe#delete')

end



