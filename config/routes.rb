Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'toppages#index'
  
 
  
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  #resources :users, only: [:index, :show, :new, :create] do
  resources :users, only: [:index, :show, :new, :create] do
     member do
      get :followings
      get :followers
      get :iinings
      get :iiners
    end
  end
  
 resources :microposts, only: [:index, :show, :new, :create] do
    member do
      get :iinings
      get :iiners
    end
end
  
  
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :okiniiris, only: [:create, :destroy]
end
