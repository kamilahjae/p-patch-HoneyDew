class UsersController < ApplicationController

  def more_info
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(params.require(:user).permit(:email, :name, :pic))
    redirect_to root_path
  end

  def edit
    @user = User.find(session[:id])
  end

  def show
    @user = User.find(session[:id])
  end

end
