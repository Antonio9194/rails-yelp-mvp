Rails.application.routes.draw do
  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Nested reviews under restaurants
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  # You can define a root if needed later:
  # root "restaurants#index"
end