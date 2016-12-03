class Students::AcademicDaysController < ApplicationController
  #before_action :authenticate_user!

  def index
    @academic_days = AcademicDay.content_days(params[:academic_week_id])
    @academic_days.content_days
    render json: @academic_days
  end

  def show
    @academic_day = AcademicDay.find(params[:id])
    render json: @academic_day
  end
end
