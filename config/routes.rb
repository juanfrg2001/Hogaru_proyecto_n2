Rails.application.routes.draw do
  resources :announcements
  devise_for :users
  get 'index', to: 'announcements#index'
  get 'home', to: 'announcements#home'
  get 'user', to: 'announcements#user'
  root 'announcements#home'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
