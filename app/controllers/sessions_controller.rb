class SessionsController < ApplicationController

  def create
    auth_hash = request.env['omniauth.auth']
    login = User.where(uid: auth_hash[:uid], provider: auth_hash[:provider])
    if login.empty?
      @current_user = User.create(uid: auth_hash[:uid], provider: auth_hash[:provider], pic: auth_hash[:info][:image], name: auth_hash[:info][:nickname])
      session[:id] = @current_user.id
      redirect_to moar_login_path(@current_user.id), notice: "Welcome to HoneyDew, #{@current_user.name}!"
    else
      session[:id] = login.first.id
      redirect_to root_path, notice: "Welcome back!"
    end
  end

  def logout
    session[:id] = nil
    redirect_to root_path, notice: "Successfully logged out."
  end


end
