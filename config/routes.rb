Rails.application.routes.draw do

  root to: 'home#index'
  get 'home/index'

  resources :barbershops
  resources :produtos

end
