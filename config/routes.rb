Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :projects do
    resources :comments, only: [:create]
  end

  devise_for :users
  get 'dashboard/show'

  authenticated :user do
    root to: 'dashboard#show', as: :user_root
  end

  devise_scope :user do
    root to: 'projects#index'
  end
end
