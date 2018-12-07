class User < ApplicationRecord
  has_many :reviews
  has_many :rents
  has_secure_password

end
