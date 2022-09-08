class FavouritesController < ApplicationController
 def index
 end
 
 
  def update

    favourite = Favourite.where(post: Post.find(params[:post]), user: current_user)
  
    if favourite == []
  
      # Create the favorite
  
      Favourite.create(post: Post.find(params[:post]), user: current_user)
  
      @favourite_exists = true
  
    else
  
      # Delete the favorite(s)
  
      favourite.destroy_all
  
      @favourite_exists = false
  
    end
  
  
  
  end
end
