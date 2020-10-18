class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/mantweets/#{comment.mantweet.id}"
  end

  def show
    @comments = Comment.find(params[:id])
  end

  def edit
    @comments = Comment.find(params[:id])
  end

  def update
    @comments = Comment.find(params[:id])
    @comment = Comment.update(comment_params)
    redirect_to mantweet_comment_path
  end

  def destroy
    @comments = Comment.find(params[:id])
    @comment = Comment.destroy(comment_params)
    redirect_to mantweet_comment_path
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, mantweet_id: params[:mantweet_id])
  end
end
