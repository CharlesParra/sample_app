SampleApp::Application.routes.draw do

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  resources :contacts, :only => [:index, :show]  

  match '/views/important', :to => 'contacts#important'

  match '/signup', :to => 'users#new'
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  match '/privacy', :to => 'pages#privacy'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  match '/signup', :to => 'users#new'

  root :to => 'pages#home'

end
