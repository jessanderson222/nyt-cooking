class Api::V1::RecipesIngredientsController < ApplicationController
    def index
        @recipes_ingredients = RecipesIngredient.all
        render json: @recipes_ingredients
    end
    
    def create
        @recipes_ingredient = RecipesIngredient.create(recipes_ingredient_params)
        render json: @recipes_ingredient, status: :accepted
    end

    def destroy
        @recipesingredients.destroy
        render json: { message: "removed" }, status: :ok
    end
    
    private
    def recipes_ingredients_params
        params.require(:recipes_ingredient).permit(:recipe_id, :ingredient_id)
    end

    def find_recipes_ingredients
        @recipes_ingredient = RecipeIngredient.find(params[:id])
    end
end