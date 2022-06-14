Rails.application.routes.draw do
  root to:"novels#index"
  resources :novels, only: [:index, :new, :create]
end
