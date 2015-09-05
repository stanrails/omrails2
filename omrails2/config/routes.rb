Rails.application.routes.draw do
  root 'static_pages#home'
  get 'help' => 'static_pages#help'
  get 'attenders' => 'users#index'
  get 'classes' => 'discipleship_classes#index'

  resources :discipleship_classes
  resources :users
end
