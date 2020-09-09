Rails.application.routes.draw do
  
  resources :users, only: [:new, :create]

  root                    'sessions#welcome'
  get   'login',      to: 'sessions#new'
  post  'login',      to: 'sessions#create'
  get   'welcome',    to: 'sessions#welcome'
  get   'authorized', to: 'sessions#page_requires_login'
  post   'logout',     to: 'sessions#destroy'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
