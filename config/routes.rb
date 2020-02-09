Rails.application.routes.draw do
  get 'proprietario/show'
  root 'home#index'
  devise_for :proprietarios
  resources :imoveis
  resources :proprietarios

end
