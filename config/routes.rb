Rails.application.routes.draw do  
  devise_for :users
  root to:"novels#index"
  get 'novels/complete'
  resources :novels, only: [:index, :new, :create, :show, :edit, :update] do
    collection do
      get 'search'
      get 'search_area'
    end
  end
  resources :areas, only: [:new, :create, :show] do
    collection do
      get 'search'
    end
  end
end
