Rails.application.routes.draw do
  resources :infrastructures, only: [:index, :show, :create, :destroy]
  resources :fittings, only: [:create, :destroy]

   root to: 'infrastructures#index'
end
