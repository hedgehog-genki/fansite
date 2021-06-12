class FanartController < ApplicationController
  def index
    @fanart = Fanart.all.page(params[:page]).per(15)
  end
end
