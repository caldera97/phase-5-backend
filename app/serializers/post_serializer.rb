class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :img, :tags, :user
  belongs_to :user, serializer: UserSerializer
  has_many :comments
end
