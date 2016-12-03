class RootController < ApplicationController
  def index
    if current_user.nil?
      redirect_to new_user_session_path
    elsif current_user.student?
      redirect_to students_dashboard_index_path
    elsif current_user.mentor?
      redirect_to
    elsif current_user.admin?
      redirect_to
    end
  end
end
