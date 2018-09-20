class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
    	format.json { head :forbidden}
    	format.html { redirect_to houses_url, alert: "You're not authorized to perform this action."}
    end
	end

	protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :firstname, :lastname, :bio, :birthday, :avatar])
  end

end
