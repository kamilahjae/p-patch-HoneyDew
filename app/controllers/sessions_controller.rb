class SessionsController < ApplicationController

  def create
    auth_hash = request.env['omniauth.auth']
    login = User.where(uid: auth_hash[:uid], provider: auth_hash[:provider])
    if login.empty?
      @current_user = User.create(uid: auth_hash[:uid], provider: auth_hash[:provider], pic: auth_hash[:info][:image], name: auth_hash[:info][:nickname])
      session[:id] = @current_user.id
      redirect_to moar_login_path(@current_user.id), notice: "Welcome to HoneyDew, <%=@current_user.name %>!"
    else
      session[:id] = login.first.id
      redirect_to root_path, notice: "Welcome back!"
    end
  end

  def logout
    session[:id] = nil
    redirect_to root_path, notice: "Successfully logged out."
  end


  # auth_hash = request.env["omniauth.auth"]
  # login = Authentication.where(uid: auth_hash[:uid], provider: auth_hash[:provider])
  # if current_bro
  #   if login.empty?
  #     current_bro.authentications.create(provider: auth_hash[:provider], uid: auth_hash[:uid])
  #     redirect_to show_path(current_bro.id), notice: "Authentication added"
  #   else
  #     redirect_to show_path(current_bro.id), notice: "Account already in use!"
  #   end
  # else
  #   if login.empty?
  #     login << make_bro_and_auth(auth_hash)
  #     # If empty, create a new Authentication/User
  #   end
  #   session[:bro_id] = login.first.user.id
  #   redirect_to root_path, notice: "So stoked to see you, bro"

end
