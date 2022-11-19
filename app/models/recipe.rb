class Recipe < ApplicationRecord
    has_many :favorites
    has_many :recipes_ingredients
    has_many :ingredients, through: :recipes_ingredients
    has_many :recipes_tags
    has_many :tags, through: :recipes_tags
end
