class Api::V1::RecipesTagsController < ApplicationController
    def create
        @recipes_tag = RecipesTagg.create(recipes_tag_params)
        render json: @recipes_tag, status: :accepted
    end

    private
    def recipes_ingredients_params
        params.require(:recipes_ingredient).permit(:recipe_id, :tag_id)
    end
end