class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params.require(:post).permit(:name, :author, :content, :pic))
    redirect_to post_path(@post.id)
  end

  def show
    @post = Post.find(params[:id])
  end

end
