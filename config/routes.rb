Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles #this is equivalent to create get, patch, put routes, it creates all of them at the same time. Check at rake routes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
