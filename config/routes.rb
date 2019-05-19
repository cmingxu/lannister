Rails.application.routes.draw do
  resources :addresses
  resources :sites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  #
  get 'mobile', to: 'welcome#mobile'
end
