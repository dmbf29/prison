Rails.application.routes.draw do
  get 'killer_categories/new'
  resources :jails do
    resources :killers, only: [:new, :create]
  end
  resources :killers, only: [:destroy, :show] do
  # resources :killers, only: [] do
    resources :killer_categories, only: [:new, :create]
  end
end
