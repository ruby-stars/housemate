class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
    	format.json { head :forbidden}
    	format.html { redirect_to houses_url, alert: "You're not authorized to perform this action."}
    end
	end
end
