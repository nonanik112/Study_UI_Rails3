Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :docs
  authenticated :user do
   root "docs#index", as: "authenticated_root"
 end

  root 'welcome#index'
  get "password/reset", to: "password_reset#new"
  post "password/reset", to: "password_reset#new"
end
