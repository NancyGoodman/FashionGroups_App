Rails.application.routes.draw do
  devise_for :users
  resources :brands
  resources :conglomerates
  root 'static_pages#home'
end
