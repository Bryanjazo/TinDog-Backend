class LikeSerializer < ActiveModel::Serializer

  attributes :id, :like, :profile_id, :dislike, :super_like, :user_id

end
