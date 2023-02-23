Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'lists#index'
  resources 'lists', only: %i[show index new create] do
    resources :bookmarks, only: %i[index new create]
  end
  resources :bookmarks, only: %i[destroy]
end
