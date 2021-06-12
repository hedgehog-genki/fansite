class ClipController < ApplicationController
  def index
    @clip = Clip.all.page(params[:page]).per(15)
  end
end