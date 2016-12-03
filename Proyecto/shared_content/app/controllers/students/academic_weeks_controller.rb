class Students::AcademicWeeksController < ApplicationController

  def index
   @academic_week = AcademicWeek.content_weeks
   render json: @academic_week

  end

  def show
    @academic_week = AcademicWeek.find(params[:id])
    render json: @academic_week
  end
end
