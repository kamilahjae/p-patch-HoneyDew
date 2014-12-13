class ToolsController < ApplicationController

  def index
    @tools = Tool.all
  end

  def update
    @tool = Tool.find(params[:id])
    if reserving_a_tool?(@tool)
      @tool.available -= 1
      if add_toolshed.save && @tool.save
        redirect_to tools_path, notice: "You have successfully reserved a tool."
      end
    end
    if returning_a_tool?(@tool)
      @tool.available += 1
      @tool.save
      if ToolShed.destroy(find_toolshed)
        redirect_to tools_path, notice: "You have successfully returned a tool."
      end
    end
  end


end
