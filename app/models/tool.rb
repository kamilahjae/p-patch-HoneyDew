class Tool < ActiveRecord::Base
  has_many :users, through: :tool_sheds

  # def reserve_tool(tool)
  #   if tool.available > 0 && params[:tool][:reserve]
  #     tool.available -= 1
  #     tool.save
  #     toolshed = ToolShed.new(
  #     user_id: params[:tool][:user_id],
  #     tool_id: params[:tool][:tool_id]
  #     )
  #   end
  #
  # end
  #


end
