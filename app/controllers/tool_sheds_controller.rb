class ToolShedsController < ApplicationController
  def new
    @toolshed = ToolShed.new(
    user_id: params[:user_id],
    tool_id: params[:tool_id]
    )
    @toolshed.save

    # to hide the user and too id in the route, create a form with 2 hidden fields on the tool botton
  end
end
