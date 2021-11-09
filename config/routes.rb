Rails.application.routes.draw do
  root to: 'pets#index'
  # resources :pets, only: [ :show, :new, :create, :edit, :update, :destroy ]
  resources :pets, except: :index
end
