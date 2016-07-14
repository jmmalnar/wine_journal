Rails.application.routes.draw do

  root 'pages#home'

  get 'signup'  => 'users#new'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :wines
  resources :users
  resources :account_activations, only: [:edit]

end
