Rails.application.routes.draw do
  root 'pages#home' 
  get 'profile', action: :profile, controller: 'users'
  scope :user do
    resources :users 
  end
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'}
end
