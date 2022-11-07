class Api::V1::CollectionsController < ApplicationController
    before_action :find_collection, only: [:update, :collection_recipes]
    def index
        @collections = Collection.all
        render json: @collections
    end
    def create
        @collection = Collection.create(collection_params)
        render json: @collection, status: :accepted
    end
    def update
        @collection.update(collection_params)
        if @collection.save
            render json: @collection, status: :accepted
        else
            render json: { errors: @collection.errors.full_messages }, status: :unprocessible_entity
        end
    end
    def collection_recipes
        @recipes.where(collection_id: @collection.id)
    end
    private
    def collection_params
        params.require(:collection).permit(:name, :picture)
    end
    def find_collection
        @collection = Collection.find(params[:id])
    end
end
