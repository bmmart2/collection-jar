Rails.application.routes.draw do
  resources :movies do
    collection { post :import }
    collection do
      get 'upload'
    end
  end
  resources :wishlists
  resources :cards
  resources :vinyls do
    collection { post :import }
    collection do
      get 'upload'
    end
  end
  resources :uploads do
    collection { post :import }
  end
  resources :videogames do
    collection { post :import }
    collection do
      get 'upload'
    end
  end
  get 'pages/upload'
  get 'pages/terms'
  get 'pages/privacy'
  get 'pages/team'
  get 'pages/index'
  get 'login/signin'
  get 'pages/search'
  get 'pages/game_info'
  get 'pages/movie_info' #added movie info page
  root 'pages#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
