class FavoriteSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :recipe
  attributes :id
end
