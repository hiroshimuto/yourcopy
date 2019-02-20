Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
    get '/', to: 'devise/registrations#new'
  end

  get '/home' => 'home#index'

  resources :themes, only: [:index]
  resources :copies, only: [:new, :create]
end
