class RecipeSerializer < ActiveModel::Serializer
  has_many :recipes_ingredients
  has_many :ingredients, through: :recipes_ingredients
  attributes :id, :video, :text, :image
end
