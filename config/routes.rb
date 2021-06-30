Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  devise_for :users
  root to: 'pages#home'
  get 'test', to: 'pages#test'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'presentation', to: 'pages#presentation'
  get 'privacy', to: 'pages#privacy'
  get 'terms', to: 'pages#terms'
  resources :pages
  
  resources :trips do
    resources :faqs
    resources :programs
  end

  resources :pages, only: [:index, :show, :new, :create]

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
