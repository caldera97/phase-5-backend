class FollowsController < ApplicationController
    def get_following_posts
        user = find_user
        posts = user.following.joins(:posts).distinct
        render json: posts
    end

    def create
        follow = Follow.create(follow_params)
    end

    def destroy
        follow= Follow.where(follower_id: params[:follower_id], following_id: params[:following_id])
        follow.destroy
        head: no_content
    end

    private
  
    def find_user
        User.find(params[:follower_id])
    end

    def follow_params
        params.permit(:follower_id, :following_id)
    end
end
