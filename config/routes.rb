Rails.application.routes.draw do
  root 'pages#home' #defines which pages you want to use as the root
  get 'about', to: 'pages#about' 
  resources :articles #this is equivalent to create get, patch, put routes, it creates all of them at the same time. Check at rake routes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'signup', to: 'users#new'
  resources :users, except: [:new] #this creates all the routes for users except the new which is created above
  get 'login', to: 'sessions#new' #sessions will be a new controller and new will be the action
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy' 
end
