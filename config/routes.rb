Rails.application.routes.draw do
  root to: 'home#start'

  get '/scan', to: 'home#scan'

  get 'deposits_by_day_chart', to: 'charts#deposits_by_day'
  get 'deposits_by_category_chart', to: 'charts#deposits_by_category'

  devise_for :users
  resources :deposits do
    collection do
      get :stats
      get :lat_longs
      get :latest
    end
  end
end
