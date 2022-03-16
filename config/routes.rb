Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: "home#index"
  # get 'customers/index' => 'customers#index'
  # get 'customers/index' => 'customers#'
  resources :customers, only: [:index, :show] do
    collection do
      get 'alphabetized'
      get 'missing_email'
    end
  end



  # get "/customers/:alphabetized" => "pages#alphabetized"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
