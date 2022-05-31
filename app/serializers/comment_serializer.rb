class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :post_id, :user
  has_one :user, Serializer: UserSerializer
end
