class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render "new"
    end
  end

  def show
    @user = User.find(session[:id])
    @toolshed = ToolShed.where(user_id: session[:id])
    @tools = []
    @toolshed.each do |row|
      @tools.push(Tool.find(row.tool_id))
    end
  end

  def edit
    @user = User.find(session[:id])
  end

  def update
    @user = User.find(session[:id])
    @user.update(user_params)
    redirect_to root_path
  end

  def more_info
    @user = User.find(session[:id])
    # find by session id to prevent users from accessing other user's information in params
  end

  def user_params
    params.require(:user).permit(:email, :name, :pic, :password_digest)
  end

end
