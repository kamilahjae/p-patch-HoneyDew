class User < ActiveRecord::Base
  # before_save { self.email = email.downcase! }
  validates :name, presence:true
  validates :pic, presence:true
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  # validates :email, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX},
  #           uniqueness: { case_sensitive: false }
            # add an index migration to the db to ensure unique entries

  # has_secure_password

  has_many :tools, through: :tool_sheds

end
