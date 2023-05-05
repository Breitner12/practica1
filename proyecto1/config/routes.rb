Rails.application.routes.draw do
  get 'laptops/index'
  get 'laptops/new'
  get 'laptops/show'
  get 'laptops/edit'
  get 'cars/index'
  get 'cars/show'
  get 'cars/new'
  get 'cars/edit'
  get 'phones/index'
  get 'phones/new'
  get 'phones/edit'
  get 'phones/show'
  root "homes#dashboard"
  resources :phones
  resources :cars
  resources :laptops
end
