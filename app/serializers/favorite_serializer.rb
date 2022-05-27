class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :post, :post_id
  belongs_to :post
end
