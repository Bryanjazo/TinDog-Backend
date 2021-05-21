class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :password, presence: true
  has_secure_password

  has_many :likes

end
