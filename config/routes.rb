Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, except: %i[edit update] do
    resources :bookmarks, only: :create
  end
  resources :bookmarks, only: :destroy
end
  # Defines the root path route ("/")
  # root "articles#index"
