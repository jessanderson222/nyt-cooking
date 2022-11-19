class TagSerializer < ActiveModel::Serializer
  has_many :recipes_tags
  has_many :recipes, through: :recipes_tags
  attributes :id, :name
end
