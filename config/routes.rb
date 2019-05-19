Rails.application.routes.draw do
  resources :site_admins
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  resources :addresses
  resources :sites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  #
  get 'mobile', to: 'welcome#mobile'
  root to: 'welcome#index'

  namespace :dashboard do
    get "/", to: 'welcome#index'
  end

  namespace :admin do
    get "/", to: 'welcome#index'
    resources :users
  end
end
