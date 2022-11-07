class IngredientSerializer < ActiveModel::Serializer
  has_many :recipes_ingredients
  has_many :recipes, through: :recipes_ingredients
  attributes :id, :name
end
