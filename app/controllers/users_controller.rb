class UsersController < ApplicationController

  def more_info
    @user = User.find(params[:id])
  end

  def new
    @user = User.find(params[:id])
    @user.update(params.require(:user).permit(:email, :name))
    redirect_to root_path
  end

end
