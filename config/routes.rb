Rails.application.routes.draw do
  devise_for :users
  resources :users
  mount BooksModule::Engine, at: "/engine", as: :books_engine
  root to: redirect { Rails.application.routes.url_helpers.books_engine_path }
  get 'set-favorite-book', to: 'users#set_favorite_book'
  patch 'update-favorite-book', to: 'users#update_favorite_book'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
