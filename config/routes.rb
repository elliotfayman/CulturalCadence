Rails.application.routes.draw do
  root to: "application#index"
  devise_for :users
  resources :musics
  get 'user/profile'
  get 'suggestions/suggestions'
  get 'top_ten/topten'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
