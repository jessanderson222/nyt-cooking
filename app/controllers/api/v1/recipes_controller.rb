class Api::V1::RecipesController < ApplicationController
    before_action :find_recipe, only: [:update, :destroy, :recipes_ingredient]
    def index
        @recipes = Recipe.all
        render json: @recipes
    end
    def create
        @recipe = Recipe.create(recipe_params)
        render json: @recipe, status: :accepted
    end
    def update
        @recipe.update(recipe_params)
        if @recipe.save
            render json: @recipe, status: :accepted
        else
            render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
        end
    end
    def destroy
        @recipe.destroy
        render json: { message: "removed" }, status: :ok
    end
    def recipes_ingredient
        @recipes_ingredient.where(recipe_id: @recipe.id)
    end
    private
    def recipe_params
        params.require(:recipe).permit(:video, :text, :image)
    end
    def find_recipe
        @recipe = Recipe.find(params[:id])
    end
end
