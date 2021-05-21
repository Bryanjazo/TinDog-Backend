class Profile < ApplicationRecord
  has_one_attached :image

  has_many :likers, through: :likes, source: :user
  belongs_to :user

  def get_image_url
  url_for(self.image)
end

end
