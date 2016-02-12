Rails.application.routes.draw do
  root to: "deposits#new"

  devise_for :users
  resources :deposits
end
