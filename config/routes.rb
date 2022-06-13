Rails.application.routes.draw do
  resources :pirates, only: [:index, :show, :destroy]
  resources :islands, only: [:index]
  resources :treasures, only: [:create]
end
