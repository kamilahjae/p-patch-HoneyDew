class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def update
    @tool = Tool.find(params[:id])
    if @tool.available > 0 && params[:tool][:reserve]
      @tool.available -= 1
      @tool.save
      @toolshed = ToolShed.new(
      user_id: params[:tool][:user_id],
      tool_id: params[:tool][:tool_id]
      )
      if @toolshed.save
        redirect_to tools_path, notice: "You have successfully reserved a tool."
      end
    end
    if params[:tool][:return]
      @tool.available += 1
      @tool.save
      a = ToolShed.where(user_id: params[:tool][:user_id], tool_id: params[:tool][:tool_id]).last.id
      ToolShed.destroy(a)
      redirect_to tools_path
    end
  end

end
