class PostSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :img, :tags, :user
  belongs_to :user
  has_many :comments
end
