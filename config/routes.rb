Rails.application.routes.draw do
  authenticated :user, ->(user) { user.admin? } do
  get 'admin', to: 'admin#index'
  get 'admin/books'
  get 'admin/users'
  get 'admin/show_book/:id', to: "admin#show_book", as: 'admin_book'
  end 
  get 'search', to: 'search#index'
  get 'users/profile'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  get '/u/:id', to: 'users#profile', as: 'user'

  resources :books
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"
end
