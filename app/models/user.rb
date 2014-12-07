class User < ActiveRecord::Base
  validates :name, presence:true
  validates :email, presence:true
  validates :pic, presence:true

end
