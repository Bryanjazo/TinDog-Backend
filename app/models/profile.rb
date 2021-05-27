class Profile < ApplicationRecord

# has_one_attached :avatar, service: :s3
 # mount_uploader :avatar, AvatarUploader
 # has_one_attached :avatar
   # include Rails.application.routes.url_helpers
  # has_one_attached :image

  has_many :likes

  belongs_to :user

#   def get_image_url
#   url_for(self.image)
# end

end
