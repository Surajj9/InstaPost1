class PostsController < ApplicationController

  before_action :set_post, only: [:show, :edit, :update, :destroy]

def show
    # @post = Post.find(params[:id])
    @favourite_exists = Favourite.where(post: @post,user: current_user)==[]? false : true
end

def index
    @posts = Post.all
  end
 
def new
    @post = Post.new
end

def edit
    # @post = Post.find(params[:id])
  end



  def create
    # @post = Post.new(params.require(:post).permit(:title, :description))
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
        flash[:notice] = "Post was created successfully."
        redirect_to @post
      else
        render 'new'
      end
  end 

  def update
    # @post = Post.find(params[:id])
    # if @post.update(params.require(:post).permit(:title, :description))
     
      if @post.update(post_params)
      flash[:notice] = "Post was updated successfully."
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    
    @post = Post.find(params[:id])
    
    @post.destroy

    redirect_to  new_post_path
  
  end

  def favourite
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description)
  end


end