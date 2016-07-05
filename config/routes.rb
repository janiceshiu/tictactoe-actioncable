Rails.application.routes.draw do
  root 'static_pages#home'
  resources :boards

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

end