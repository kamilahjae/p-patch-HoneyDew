module ApplicationHelper

  def logged_in?
    if session[:id]
      true
    else
      false
    end
  end

  def current_user
    if session[:id]
      User.find(session[:id])
    end
  end


  def convert_datetime(datetime)

  end

end
