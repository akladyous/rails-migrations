Rails.application.routes.draw do
  resources :blogs
  get "home", to: "home#index"
  # match 'home/index', to: 'home#index', via: %i[get post]
  # get "home/:id", to: "home#index"

  get  'home/form', to: "home#show"
  post 'home/form_result', to: "home#create"

  # get ':controller(/:action(/:id))'
  # match ':controller(/:action(/:id))', via: :get

  root "home#index"
  # match '/', to: 'home#index', via: :get
end
