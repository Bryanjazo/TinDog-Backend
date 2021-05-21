class UserSerializer < ActiveModel::Serializer
  attributes :username, :image, :username, :email, :gender, :date_of_birth, :member, :member_plus, :bio
  # has_many :conversations
  # has_many :messages
end
