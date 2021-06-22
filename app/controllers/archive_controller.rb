class ArchiveController < ApplicationController
  def index
    @archive = params[:tag_id].present? ? Tag.find(params[:tag_id]).archives.page(params[:page]).per(15) : Archive.all.page(params[:page]).per(15)
    @tag = Tag.all
  end

  def search
    @archives = Archive.search(params[:keyword]).page(params[:page]).per(15)
  end
end
