Rails.application.routes.draw do
  # get 'listings/show'
  # get 'listings/index'
  # get 'listings/create'
  # get 'listings/destroy'
  # get 'listings/update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :listings, only: [:index, :show, :new, :create, :destroy, :update]

  # Defines the root path route ("/")
  # root "posts#index"
end
