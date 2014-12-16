class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :find_all_tool_users, :reserving_a_tool?, :returning_a_tool?, :find_toolshed

  def find_all_tool_users(tool)
    toolshed = ToolShed.where(tool_id: tool.id)
    users = []
    toolshed.each do |row|
      users.push(User.find(row.user_id))
    end
    return users
  end

  def reserving_a_tool?(tool)
    tool.available > 0 && params[:tool][:reserve]
  end

  def add_toolshed
    ToolShed.new(
    user_id: params[:tool][:user_id],
    tool_id: params[:tool][:tool_id]
    )
  end

  def returning_a_tool?(tool)
    params[:tool][:return]
  end

  def find_toolshed
    ToolShed.where(user_id: params[:tool][:user_id], tool_id: params[:tool][:tool_id]).last.id
  end


end
