Rails.application.routes.draw do
  resources :vinyls
  resources :uploads do
    collection { post :import }
  end
  get 'pages/upload'
  get 'pages/terms'
  get 'pages/privacy'
  get 'pages/team'
  get 'pages/index'
  resources :videogames
  get 'login/signin'
  root 'pages#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
