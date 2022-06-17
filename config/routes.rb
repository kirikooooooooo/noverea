Rails.application.routes.draw do
  root to:"novels#index"
  get 'novels/complete'
  resources :novels, only: [:index, :new, :create, :show]
  resources :areas, only: [:new, :create]
end
