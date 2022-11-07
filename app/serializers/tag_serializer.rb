class TagSerializer < ActiveModel::Serializer
  belongs_to :recipe
  attributes :id, :name
end
