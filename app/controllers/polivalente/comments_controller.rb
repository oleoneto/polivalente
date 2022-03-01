module Polivalente
  class CommentsController < ApplicationController
    def create
      @comment = @commentable.comments.new(comment_params)
      @comment.user = current_user
      @comment.save
      redirect_to @commentable, notice: "Your comment was successfully posted."
    end

    def destroy
      @comment = Comment.where(user_id: current_user.id).find(params[:id])

      @comment.destroy if @comment

      respond_to do |format|
        format.html { redirect_back(fallback_location: @commentable) }
        format.json { head :no_content }
      end
    end

    private

    def comment_params
      params.require(:comment).permit(:content)
    end
  end
end
