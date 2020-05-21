Rails.application.routes.draw do
  
  get 'relationships/create'
  get 'relationships/destroy'

  devise_for :users

  resources :users do 
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member # 追加
    get :followers, on: :member # 追加
  end

  resources :posts, only: [:index, :show, :create]



  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
