Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :listings, only: [:index, :show, :new, :create, :destroy, :update]

end
