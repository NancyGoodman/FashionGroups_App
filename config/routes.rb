Rails.application.routes.draw do
  devise_for :users
  resources :brands
  root 'static_pages#home'
end
