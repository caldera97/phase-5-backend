class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :post_id, :user
  belongs_to :user
end
