Rails.application.routes.draw do
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create]
    resources :restaurants, only: [:create, :index, :show]
    resource :session, only: [:create, :destroy, :show]
  end
end
