class FavoritesController < ApplicationController

  def create
     @post = Post.find(params[:post_id])
     favorite = current_user.favorites.build(post: @post)
     authorize favorite
     if favorite.save
       # Add code to generate a success flash and redirect to @post
       # Remember the path shortcut: [@post.topic, @post]
       flash[:notice] = "Post was favorited."
        redirect_to :back
     else
       # Add code to generate a failure flash and redirect to @post
       flash[:error] = "There was an error updating the post."
       render :show
     end
   end

   def destroy
     # Get the post from the params
     @post = Post.find(params[:id])
     # Find the current user's favorite with the ID in the params
     @favorite = Favorite.find(params[:id])
     authorize @favorite

     if @favorite.destroy
       # Flash success and redirect to @post
      flash[:notice] = "Post was unfavorited."
      redirect_to :back
     else
       # Flash error and redirect to @post
       flash[:error] = "There was an error updating the post."
       render :show
     end
   end

end
