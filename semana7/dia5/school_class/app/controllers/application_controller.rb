class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  # def authenticate_user
  # 	unless @user.role? "Admin"
  	
  # 	else
  # 		redirect_to path
  # 	end


end
