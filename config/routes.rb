Rails.application.routes.draw do
  root 'pages#home'

  resources :wines
  resources :users

  get 'signup'  => 'users#new'
end
