class Api::V1::TagsController < ApplicationController
    def index
        @tags = Tag.all
        render json: @tags
    end
    def create
        @tag = Tag.create(tag_params)
        render json: @tag, status: :accepted
    end
    def update
        @tag.update(tag_params)
        if @tag.save
            render json: @tag, status: :accepted
        else
            render json: { errors: @tag.errors.full_messages }, status: :unprocessible_entity
        end
    end
    private
    def tag_params
        params.require(:tag).permit(:name)
    end
    def find_user
        @tag = Tag.find(params[:id])
    end
end
