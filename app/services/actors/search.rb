module Actors
  class Search
    
    def execute(search_term: )
      @actors = Actor.where("name LIKE (?)", "%#{search_term}%")
      @actors
    end
  end
end