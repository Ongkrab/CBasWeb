CBasWebRVM::Application.routes.draw do

  get "program/new"

  get "program/create"

  match "manual" =>"static#document"
  match "contact" => "static#contact"
  match "program" =>"work#new"
  get "profile/:id" , to: 'users#show' ,as: 'profile'

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :work
end