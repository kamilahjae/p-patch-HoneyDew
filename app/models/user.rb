class User < ActiveRecord::Base
  validates :name, presence:true
  validates :pic, presence:true
  has_and_belongs_to_many :tools

end
