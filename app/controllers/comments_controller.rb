class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def new
    redirect_to new_user_session_path unless user_signed_in?
  end

  def create
    comment = Comment.create(comment_params)
    redirect_to "/posts/#{comment.post.id}"
  end

  def edit
  end

  def update
  end

  def destroy
    @comment = Comment.find(params[:id])
  end

  private
  def comment_params
    params.permit(:text, :post_id).merge(user_id: current_user.id)
  end
end
