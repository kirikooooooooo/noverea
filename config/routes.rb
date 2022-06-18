Rails.application.routes.draw do
  root to:"novels#index"
  get 'novels/complete'
  resources :novels, only: [:index, :new, :create, :show, :edit, :update] do
    collection do
      get 'search'
    end
  end
  resources :areas, only: [:new, :create, :show]
end
