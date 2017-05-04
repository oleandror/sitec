class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :last_name, :dni, :birthdate, :email, :gender, :type, :password, :password_confirmation, :city, :address, :phone_number) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:password, :current_password, :city, :address, :phone_number) }
    end
end
