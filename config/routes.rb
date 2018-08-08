Rails.application.routes.draw do
  resources :jails do
    resources :killers, only: [:new, :create]
  end
  resources :killers, only: [:destroy, :show]
end
