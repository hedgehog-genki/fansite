class HomeController < ApplicationController
  def index
    @archivetop = Archive.order(archiveviews: :desc).limit(14)
  end
end
