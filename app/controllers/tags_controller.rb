class TagsController < ApplicationController
  def new
    @tag = Tag.all
  end
  
end
