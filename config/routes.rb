Rails.application.routes.draw do
  devise_for :users

  root to: "dashboard#index"

  resources :facebook_apps do
    resources :monitor_tasks
  end
end
