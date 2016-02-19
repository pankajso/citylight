Rails.application.routes.draw do
  resources :installations, only: [:create, :show, :destroy]
  
  resources :infrastructures, only: [:index, :show, :create, :destroy]
  resources :fittings, only: [:create, :destroy]

   root to: 'infrastructures#index'
end
