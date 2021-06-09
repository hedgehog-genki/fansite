class HomeController < ApplicationController
  def def(index)
    @archive = Archive.fin
  end
end
