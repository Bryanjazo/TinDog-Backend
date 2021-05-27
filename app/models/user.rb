class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :password, presence: true
  has_secure_password
  has_one :profile

  has_many :likes
  has_many :liked_profiles, through: :likes, source: :profile

end
