class User < ApplicationRecord
  has_many :reviews
  has_many :rents
  has_secure_password


  validates :user_name, uniqueness: true

end
