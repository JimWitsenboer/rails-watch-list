Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[index new create]
  end
  resources :bookmarks, only: [:destroy]
end
