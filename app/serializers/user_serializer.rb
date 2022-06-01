class UserSerializer < ActiveModel::Serializer
    attributes :id, :username, :posts, :following
    has_many :posts, serializer: PostSerializer
    has_many :comments
    has_many :favorites
    has_many :following, each_serializer: FollowingUserSerializer
  end