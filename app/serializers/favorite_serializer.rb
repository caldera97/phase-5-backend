class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :post
  belongs_to :post
end
