Rails.application.routes.draw do
  root 'users#index' 
  get 'users/index'
  get 'users/profile', as: 'user_root'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks' }

end
