Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  resources :comments
  resources :users
  resources :categories

  resources :posts do
    resources :comments, only: [:create]  # Nest comments under posts
  end
end
