Rails.application.routes.draw do
  resources :photos, only: %i[index] do
    collection { get :preview }
  end

  root 'photos#index'
end
