Rails.application.routes.draw do
  
  devise_for :admins
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  authenticated :admin do
    # Admins manage projects
    root to: "admin#index", as: :admin_root
    namespace :admin do
      resources :project_types
      resources :promotors
      resources :pages
    end
  end

  # open routes
  resources :projects, only: [:index, :show]
  # Defines the root path route ("/")
  root "pages#index"
  get "about_us", to: "pages#about_us"
  get "contact_us", to: "pages#contact_us"

  get "admin" => "admin#index"
end
