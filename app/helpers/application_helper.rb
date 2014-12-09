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
      a = User.find(session[:id])
    end
    return a
  end


  def convert_datetime(datetime)

  end

end
