Rails.application.routes.draw do
  root to: 'numbers#index'
  resources :numbers
  get 'pay', to: 'khipu#pay'
  post 'pay', to: 'khipu#pay'
end
