class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :configure_permitted_parameters, if: :devise_controller?

  def authenticate_any!
    if teacher_signed_in?
      true
    else
      authenticate_user!
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[email name nickname image password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[image email password details nickname])
  end
end
