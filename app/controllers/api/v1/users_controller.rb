class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:update, :favorites]
    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.create(user_params)
        render json: @user, status: :accepted
    end

    def destroy
        @user.destroy
        render json: { message: "removed" }, status: :ok
    end

    def favorites
        @favorites.where(user: @user)
    end

    private
    def user_params
        params.require(:user).permit(:email)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
