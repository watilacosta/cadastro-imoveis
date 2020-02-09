Rails.application.routes.draw do
  get 'proprietario/show'
  root 'home#index'
  devise_for :proprietarios, skip: :registrations
  
  resources :imoveis
  resources :proprietarios

end
