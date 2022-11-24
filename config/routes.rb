Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :dashboards, only: [:index]
  resources :activities do
    resources :bookings, only: %i[create]
  end

  get "booking/:id/accept", to: "bookings#accept", as: "accept"
  patch "booking/:id/decline", to: "bookings#decline", as: "decline"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
