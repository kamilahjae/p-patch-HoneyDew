class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params.require(:post).permit(:name, :author, :content, :pic))
    redirect_to post_path(@post.id)
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(session[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params.require(:post).permit(:name, :author, :content, :pic))
    redirect_to post_path(@post.id)
  end

end
