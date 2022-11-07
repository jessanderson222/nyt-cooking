class IngredientSerializer < ActiveModel::Serializer
  has_and_belongs_to_many :recipes
  attributes :id, :name
end
