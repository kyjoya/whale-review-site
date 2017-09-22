Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"

  resources :whales
  post 'whales/report' => 'whales#report', as: :report

  root 'whales#index'
end
