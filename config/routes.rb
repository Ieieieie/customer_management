Rails.application.routes.draw do
  devise_for :users, only: [:session]
  resources :history
  # get 'history/:search', to: 'history#search'
  root "history#index"
  get '/search', to: 'history#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
