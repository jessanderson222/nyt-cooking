class Collection < ApplicationRecord
    has_many :recipes
    has_many :saves, through: :recipes
end
