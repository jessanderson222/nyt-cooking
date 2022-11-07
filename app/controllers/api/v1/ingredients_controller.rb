class Api::V1::IngredientsController < ApplicationController
    before_action :find_ingredient, only: [:update, :destroy, recipes_ingredient]
    def index
        @ingredients = Ingredient.all
        render json: @ingredients
    end
    def create
        @ingredient = Ingredient.create(ingredient_params)
        render json: @ingredient, status: :accepted
    end
    def destroy
       @ingredient.destroy
       render json: { message: "removed" }, status: :ok
    end
    def recipes_ingredient
        @recipes_ingredient.where(ingredient_id: @ingredient.id)
    end
    private
    def ingredient_params
        params.require(:ingredient).permit(:name)
    end
    def find_ingredient
        @ingredient = Ingredient.find(params[:id])
    end
end
