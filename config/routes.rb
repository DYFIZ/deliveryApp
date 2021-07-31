Rails.application.routes.draw do
  resources :packages
  get 'couriers/index'
  get 'couriers/new', to: 'couriers#new', as: "new"
  get 'couriers/show/:id', to: 'couriers#show', as: "show"
  get 'couriers/edit/:id', to: 'couriers#edit', as: "edit"
  post 'couriers/edit/:id', to: 'couriers#update', as: "update"
  post 'couriers/new', to: 'couriers#create'
  post 'couriers/update', to: 'couriers#update'

  
  get 'packages/new/:id', to: 'packages#new', as: "delivery"
  get 'packages/new/:i', to: 'packages#show', as: "delivery"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
