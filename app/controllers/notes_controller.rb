class NotesController < ApplicationController
  
  def index
   @notes = Note.order("title").page(params[:page]).per_page(5)
  end

  def new
    @note = Note.new
  end

end
