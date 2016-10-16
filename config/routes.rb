Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :countries, only: [:index, :show] do
      resources :states, only: [:index, :show]
    end
  end

  root 'home#index'
end
