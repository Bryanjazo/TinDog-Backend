class Like < ApplicationRecord

  belongs_to :user
  has_many :users, through: :likes

end