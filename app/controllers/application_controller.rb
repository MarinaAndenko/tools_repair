class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    keys = [:name, :surname, :birthdate, :adress, :email, :password, :password_confirmation, :admin]
    devise_parameter_sanitizer.permit(:sign_up, keys: keys)
    devise_parameter_sanitizer.permit(:sign_in, keys: keys)
    devise_parameter_sanitizer.permit(:account_update, keys: keys)
  end
end
