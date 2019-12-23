Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Welcome page to choose between registration and login

  get '/' => 'application#welcome', as: 'welcome'

  # Create the routes for User registration

  get '/users/new' => 'users#new', as: 'new_user'

  post '/users' => 'users#create', as: 'users'

  # Create routes for managing sessions of existing users

  get '/login' => 'sessions#new', as: 'login'

  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy', as: 'logout'
end
