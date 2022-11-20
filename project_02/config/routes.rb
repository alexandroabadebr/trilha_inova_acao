Rails.application.routes.draw do
  resources :aprovacao_comentarios
  resources :comentarios
  resources :ators
  resources :filmes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "filmes#index"
end
