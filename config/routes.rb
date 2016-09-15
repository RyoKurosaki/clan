require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Sidekiq::Web => '/sidekiq'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: "logins#index"
  resources :logins, only: [:index, :edit, :update, :gohome] do
    member do
      get 'gohome'
    end
  end

  resources :schedules, only: [:index, :new, :create, :edit, :update]
  get "schedules/get_events"
end
