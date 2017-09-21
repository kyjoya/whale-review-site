Rails.application.routes.draw do
  root to: "whales#index"
  devise_for :users
end
