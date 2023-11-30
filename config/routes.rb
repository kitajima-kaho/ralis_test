Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "hello", to: "hello#index"

  root to: 'posts#index'
  resources :posts, only: [:index, :new, :create]
end