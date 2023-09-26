Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # config/routes.rb

  namespace :api, defaults: { format: :json } do
    resources :requests do
      member do
        get 'matching_partners'
      end
    end
  end

end
