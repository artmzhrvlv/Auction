Rails.application.routes.draw do
  root 'pages#home' 
  get 'profile', action: :profile, controller: 'users'
  scope :all do
    resources :users, only: [:index, :show] 
  end
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations',
    sessions: 'users/sessions'
    }
end
