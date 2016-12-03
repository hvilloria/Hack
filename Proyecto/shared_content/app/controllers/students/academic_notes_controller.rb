class Students::AcademicNotesController < ApplicationController
  before_action :set_day, only: [:index,:create]
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @academic_notes = @academic_day.academic_notes
    render json: @academic_notes
  end

  def show
    @academic_note = AcademicNote.find(params[:id])
    render json: @academic_note
  end

  def create
    @academic_note = @academic_day.academic_notes.build(academic_notes_params)
    if @academic_note.save
      render json: @academic_note
    else
      render json: @academic_note.errors
    end
  end

  def update

    if @academic_note.update(academic_notes_params)
      render json: @academic_note
    else
      render json: @academic_note.errors
    end

  end

  def destroy
    @academic_note.destroy
    render json: {}, status: :ok
  end

  private
  def set_note
    @academic_note = AcademicNote.find(params[:id])
  end

  def set_day
    @academic_day = AcademicDay.find(params[:academic_day_id])
  end

  def academic_notes_params
    params.require(:academic_note).permit(:title,:description,:author,:post,:user_id)
  end
end
