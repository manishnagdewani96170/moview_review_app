class ActorsController < ApplicationController
  def index
    @actors = Actor.all
    if params[:search]
      @actors = Actors::Search.new.execute(search_term: params[:search])
    end
    @actors
  end
end
