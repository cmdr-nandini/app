Rails.application.routes.draw do
  get 'page/home'
  get 'page/about'
  devise_for :users, controllers: {sessions: 'users/sessions', passwords: 'users/passwords',registrations:'users/registrations', :invitations => 'users/invitations'}
  resources :posts
  get 'about', to: 'pages#about'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
