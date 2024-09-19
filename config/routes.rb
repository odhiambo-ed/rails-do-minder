Rails.application.routes.draw do
  # Root path (assuming you have a home controller with an index action)
  root 'home#index'

  # Devise routes for user authentication
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'register'
  }

  # Dashboard
  get 'dashboard', to: 'dashboard#index'

  # Tasks routes
  resources :tasks do
    member do
      patch :toggle
    end
  end

  # Categories routes
  resources :categories

  # Add any additional routes your application needs below this line
end
