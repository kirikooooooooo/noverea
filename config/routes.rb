Rails.application.routes.draw do
  root to:"novels#index"
  get 'novels/index'
end
