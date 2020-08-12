Rails.application.routes.draw do
  # get 'restaurants/index'
  # get 'restaurants/new'
  # get 'restaurants/show'
  # get 'restaurants/create'
  # get 'reviews/new'
  # get 'reviews/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :new, :show, :create] do
    resources :reviews, only: [:new, :create]
  end
end
