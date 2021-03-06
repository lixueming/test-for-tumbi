class ApplicationController < ActionController::Base
  protect_from_forgery
	def require_login
		if !user_signed_in?
			redirect_to new_user_session_path
		end
	end
end
