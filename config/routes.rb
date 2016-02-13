Rails.application.routes.draw do
  root to: "home#start"

  devise_for :users
  resources :deposits
end
