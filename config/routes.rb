Rails.application.routes.draw do
  resources :articles
  resources :announcements
  devise_for :users
  get 'index', to: 'articles#index'
  get 'home', to: 'articles#home'
  get 'user', to: 'articles#user'
  root 'articles#home'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
