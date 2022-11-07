class RecipeSerializer < ActiveModel::Serializer
  has_and_belongs_to_many :ingredients
  attributes :id, :video, :text, :image
end
