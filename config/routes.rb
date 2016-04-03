Rails.application.routes.draw do
  devise_for :users

  resources :pages, only: :show

  root to: 'pages#show', constraints: {subdomain: /.+/}
  get '/', to: 'pages#show'

  namespace :manage do
    resources :admin
    resources :page
    resources :admin
  end
end
