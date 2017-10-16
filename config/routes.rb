Rails.application.routes.draw do
  root "posts#index"
  resources :posts
  resources :posts do
    resources :answers, only: :create
  end
end
