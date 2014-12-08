class User < ActiveRecord::Base
  validates :name, presence:true
  validates :pic, presence:true

end
