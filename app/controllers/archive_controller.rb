class ArchiveController < ApplicationController
  def index
    @archive = Archive.all
  end
end
