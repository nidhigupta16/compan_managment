Rails.application.routes.draw do
  resources :project_clients
  resources :projects
  resources :companies
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
 
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }

  root "user#index"

  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }

  # devise_for :users, controllers: { registrations: 'users/registrations' }

 

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

end
