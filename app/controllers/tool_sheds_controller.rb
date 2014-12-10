class ToolShedsController < ApplicationController
  def new
    @toolshed = ToolShed.new(
    user_id: params[:user_id],
    tool_id: params[:tool_id]
    )
    if @toolshed.save
      redirect_to tools_path, notice: "You have successfully reserved a tool."
    end
  end
  
end
