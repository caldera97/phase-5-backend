class FavoritePostsSerializer < ActiveModel::Serializer
  attributes :posts
  has_many :posts, serializer: PostSerializer
end
