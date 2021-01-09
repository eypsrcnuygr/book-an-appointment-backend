Rails.application.routes.draw do
  resources :appointments
  mount_devise_token_auth_for 'User', at: 'auth'

  mount_devise_token_auth_for 'Teacher', at: 'auth'
  as :teacher do
    # Define routes for Teacher within this block.
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
