Rails.application.routes.draw do  
  namespace :admins do
    get 'toppages/index'
  end
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    #registrations: 'admins/registrations'
  }
  devise_scope :admin do
    get '/admins/sign_out' => 'admins/sessions#destroy'
  end
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
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
