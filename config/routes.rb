Rails.application.routes.draw do
  root to: "application#index"
  devise_for :users
  resources :musics
  get 'user/profile'
  get 'suggestions/suggestions'
  get 'top_ten/topten'
  get 'top_ten/suggestion'
  post 'music', to: 'music#create'
  post 'top_ten/topten'
  post 'user/id'
  patch "user/update"
  get '/user/show'
  get 'user/profile'
  
  resources :user do

    patch :update

  end



  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
