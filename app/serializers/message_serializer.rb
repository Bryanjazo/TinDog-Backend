class MessageSerializer < ActiveModel::Serializer
  attributes: :content
  # has_many :conversations
  has_many :messages
end
