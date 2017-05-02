Rails.application.routes.draw do
  resources :photos, only: %i[show index]
  post 'search' => 'photos#search'

  root 'photos#index'
end
