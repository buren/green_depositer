Rails.application.routes.draw do
  root to: "deposits#new"

  get 'deposits_by_day_chart', to: 'charts#deposits_by_day'
  get 'deposits_by_category_chart', to: 'charts#deposits_by_category'

  devise_for :users
  resources :deposits do
    collection do
      get :lat_longs
    end
  end
end
