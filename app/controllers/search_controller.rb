class SearchController < ApplicationController
  def index
    if params[:nation] == "fire_nation"
      @people = AvatarFacade.fire_nation.first(25)
    end
  end
end