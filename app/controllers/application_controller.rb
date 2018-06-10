class ApplicationController < ActionController::Base

	  def after_sign_in_path_for(resource_or_scope)
    if current_user.sign_in_count == 1
      edit_user_path(current_user)
    else
      landing_pages_home_path
    end
  end

	rescue_from CanCan::AccessDenied do |exception|
		redirect_to main_app.root_url, alert: exception.message
	end
end
