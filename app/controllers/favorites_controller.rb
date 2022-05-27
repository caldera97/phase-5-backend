class FavoritesController < ApplicationController
    def create
        favorite = Favorite.create(post_params)
        render json: favorite, status: :created
    end

    private

    def post_params
        params.permit(:user_id, :id, :post_id)
    end
end
