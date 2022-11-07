class Api::V1::FavoritesController < ApplicationController
  def index
        @favorites = Favorite.all
        render json: @favorites
    end
    def create
        @favorite = Favorite.create(save_params)
        render json: @favorite
    end
    def destroy
        @favorite.destroy
        render json: { message: "removed" }, status: :ok
    end

    private
    def save_params
        params.require(:favorite).permit(:user_id, :recipe_id)
    end
end
