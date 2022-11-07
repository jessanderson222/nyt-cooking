class CollectionSerializer < ActiveModel::Serializer
  has_many :recipes
  attributes :id, :recipes
end