Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
    get '/', to: 'devise/registrations#new'
  end

  get '/home' => 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :themes, only: [:index]
end
