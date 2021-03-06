class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params.require(:post).permit(:name, :author, :content, :pic))
    post_mailer = PostMailer.new_post(@post.id)
    post_mailer.deliver
    redirect_to post_path(@post.id)
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(params.require(:post).permit(:name, :author, :content, :pic))
    redirect_to post_path(@post.id)
  end

  def destroy
    Post.destroy(params[:id])
    redirect_to posts_path
  end

end
