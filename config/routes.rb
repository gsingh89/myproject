Rails.application.routes.draw do
  get '/gamepage', to: 'gamepage#show', as: 'gamepage'

  get 'products/index'

  get '', to:'homepage#index', as:'homepage'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
