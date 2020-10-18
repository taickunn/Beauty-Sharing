Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:  'posts#index'
    resources :mantweets do
    resources :comments, only: [:create, :show, :edit, :update, :destroy]
    end
    resources :users
    resources :posts, only:[:index]
  
end
