class ProfileSerializer < ActiveModel::Serializer


  attributes :id, :name, :age, :member, :image, :gender, :interest, :bio

  def image
    if object.image.attached?
     {
       url: rails_blob_url(object.image)
     }
   end
 end
end
