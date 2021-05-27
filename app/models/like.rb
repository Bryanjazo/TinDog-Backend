class Like < ApplicationRecord

  belongs_to :user
  belongs_to :profile
  has_many :users, through: :likes


end
