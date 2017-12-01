Rails.application.routes.draw do
resources :charges, only: [:new, :create]

  get 'cartstuff/thecart'

  get '/gamepage', to: 'gamepage#show', as: 'gamepage'

  get 'products/index'

  get '', to:'homepage#index', as:'homepage'

  get 'search', to: 'gamepage#search', as: 'search'
  
  get 'search_results', to: 'gamepage#search_results', as: 'search_results'
  
  get 'category/:id', to: 'gamepage#catsearch', as: 'Category'

  get 'prod_display/:id', to: 'gamepage#prod_display', as: 'product'

  get 'most_recent', to: 'gamepage#most_recent', as: 'most_recent'
  
  get 'onsale', to: 'gamepage#onsale', as: 'onsale' 

  post 'cartstuff/:id', to: 'cartstuff#thecart', as: 'cartstuff'

  get 'carstuff', to: 'cartstuff#show', as: 'show'

  post 'cartremove/remove/:id', to: 'cartstuff#remove', as: 'remove'




  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
