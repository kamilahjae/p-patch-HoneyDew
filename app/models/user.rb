class User < ActiveRecord::Base
  # before_save { self.email = email.downcase! }
  validates :name, presence:true
  validates :pic, presence:true

  has_many :tools, through: :tool_sheds

end
