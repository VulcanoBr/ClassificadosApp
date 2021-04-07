Rails.application.routes.draw do
  root to: "home#index"

  resources :users, only: [:new, :create]

  resources :ads, only: [:new, :create, :edit, :update, :show]

  # login
  resources :sessions, only: [:new, :create] do
    collection do
      delete "sign_out", to: "sessions#destroy", as: "sign_out"
    end
  end
end
