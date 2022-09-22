Rails.application.routes.draw do
  root 'pages#home' 
  get 'profile', action: :profile, controller: 'users'
  resources :users do 
    get 'admin_edit', on: :member
  end
  get 'profile/edit', action: :edit, controller: 'users'

  devise_for :users, path: '', path_names: {
    sign_in: 'login', sign_out: 'logout',
    password: 'secret', confirmation: 'verification',
    unlock: 'unblock', registration: 'registration',
    sign_up: 'signup'}, controllers: { 
      omniauth_callbacks: 'users/omniauth_callbacks',
      registrations: 'users/registrations',
      passwords: 'users/passwords' }
  
end
