Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'gifs#index'

  get 'about' => 'pages#about', as: 'about'

  resources :users
  resources :gifs
  resources :devise
end
