class Tool < ActiveRecord::Base
  has_many :users, through: :tool_sheds
end
