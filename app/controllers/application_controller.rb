class ApplicationController < ActionController::Base
  

	  protect_from_forgery with: :exception
	  before_action :authenticate_user!
	  before_action :configure_devise_params, if: :devise_controller?

	protected

	  def configure_devise_params
	    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :kind, :email, :password, :password_confirmation])
	  
	  end



end
