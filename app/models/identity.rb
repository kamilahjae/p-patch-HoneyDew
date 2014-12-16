class Identity < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX},
  uniqueness: { case_sensitive: false }, allow_nil: true
  # add an index migration to the db to ensure unique entries

  has_secure_password
end
