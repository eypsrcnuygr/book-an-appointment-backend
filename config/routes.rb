Rails.application.routes.draw do
  root 'appointments#index'
  get 'teachers', to: 'teachers#index'
  resources :appointments
  mount_devise_token_auth_for 'User', at: 'auth'

  mount_devise_token_auth_for 'Teacher', at: 'auth_teacher'
  as :teacher do
    # Define routes for Teacher within this block.
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
