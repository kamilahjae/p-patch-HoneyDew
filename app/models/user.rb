class User < ActiveRecord::Base
  validates :name, presence:true
  validates :pic, presence:true

  has_many :tools, through: :tool_sheds

end
