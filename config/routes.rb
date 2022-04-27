Rails.application.routes.draw do
  root 'pages#landing'
  get "/banned" => "pages#banned", as: "banned"
  get "/home" => "pages#home", as: "home"
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :ban_items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
