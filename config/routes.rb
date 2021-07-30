Rails.application.routes.draw do
  get 'couriers/index'
  get '/couriers/add', to: 'couriers#add', as: "add"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
