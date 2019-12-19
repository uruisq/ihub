Rails.application.routes.draw do

  resources :feeds do
    resources :comments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
  end
  resources :favorites, only: [:destroy]

  root to: 'feeds#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :users, controllers: {
        sessions: 'users/sessions'
  }
end
