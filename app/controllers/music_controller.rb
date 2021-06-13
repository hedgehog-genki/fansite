class MusicController < ApplicationController
  def index
    @music = Music.order("rand()").page(params[:page]).per(15)
  end
end
