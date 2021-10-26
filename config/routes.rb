Rails.application.routes.draw do
  resources :announcements
  get 'index', to: 'announcements#index'
  get 'home', to: 'announcements#home'
  get 'user', to: 'announcements#user'
  root 'announcements#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
