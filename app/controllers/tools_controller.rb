class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def update
    @tool = Tool.find(params[:id])
    if @tool.available > 0 && params[:tool][:reserve]
      @tool.available -= 1
      @tool.save
    end
    redirect_to tools_path
  end

end
