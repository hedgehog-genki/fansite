class ArchiveController < ApplicationController
  def index
    @archive = Archive.all.page(params[:page]).per(15)
  end
end
