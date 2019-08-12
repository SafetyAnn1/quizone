class NotesController < ApplicationController
  
  def index
   @notes = Note.order("title").page(params[:page]).per_page(4)
  end

  def new
    @note = Note.new
  end

  def create
    Note.create(note_params)
    redirect_to root_path
  end

  private

  def note_params
    params.require(:note).permit(:title, :description)
  end

end
