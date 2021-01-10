Rails.application.routes.draw do
  root 'appointments#index'
  get 'teachers', to: 'teachers#index'
  resources :appointments
  mount_devise_token_auth_for 'User', at: 'auth'

  mount_devise_token_auth_for 'Teacher', at: 'auth_teacher'

end
