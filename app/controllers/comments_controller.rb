class CommentsController < ApplicationController
  def create
    mantweet = Mantweet.find(params[:mantweet_id])
    @comment = mantweet.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      flash[:success] = "コメントしました"
      redirect_back(fallback_location: root_path)
    else
      flash[:success] = "コメントできませんでした"
      redirect_back(fallback_location: root_path)
    end
  end

  # def show
  #   @comments = Comment.find(params[:id])
  # end

  # def edit
  #   @comments = Comment.find(params[:id])
  # end

  # def update
  #   @comments = Comment.find(params[:id])
  #   @comments.update(comment_params)
  #   redirect_to mantweet_comment_path
  # end

  # def destroy
  #   @comments = Comment.find(params[:id])
  #   @comments.destroy
  #   redirect_to mantweet_path
  # end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, mantweet_id: params[:mantweet_id])
  end

end
