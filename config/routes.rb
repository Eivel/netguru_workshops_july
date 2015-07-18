Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    resources :products do
      resources :reviews
    end
  end
  get '/users/profile' => 'users#show', as: :user_profile
  post '/users/profile' => 'users#edit', as: :edit_profile
  root 'categories#index'
end
