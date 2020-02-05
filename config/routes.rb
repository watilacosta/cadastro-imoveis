Rails.application.routes.draw do
  root 'home#index'
  devise_for :proprietarios
  
  resources :imoveis
  resources :proprietarios, only: [:show]
end
