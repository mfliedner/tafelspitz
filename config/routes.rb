Rails.application.routes.draw do
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create] do
      resources :reservations, only: [:index, :show, :update]
    end
    resources :restaurants, only: [:create, :index, :show] do
      resources :reviews, only: [:create, :index, :show]
      resources :reservations, only: [:create]
    end
    resource :favorites, only: [:create, :destroy]
    resource :session, only: [:create, :destroy, :show]
  end
end
