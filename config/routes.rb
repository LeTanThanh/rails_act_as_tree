Rails.application.routes.draw do
  root "categories#index"

  resources :categories, only: %i|index show|
end
