class CommentsController < ApplicationController

  def index 
    render json: Comment.all
  end

  def create
    comment = Comment.create(comment_params)
    render json: comment, status: :created
  end

  def update
    comment = find_comment
    comment.update(comment_params)
    render json: comment
  end

  def destroy
    comment = find_comment
    comment.destroy
    head :no_content
  end

  private

  def find_comment
    Comment.find(params[:id])
  end

  def comment_params
    params.permit(:user_id, :post_id, :content, :id)
  end 
end
