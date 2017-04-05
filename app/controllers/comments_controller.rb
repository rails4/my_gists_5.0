class CommentsController < ApplicationController
  def create
    @gist = Gist.find(params[:gist_id])
    @comment = @gist.comments.create(comment_params)
    redirect_to gist_path(@gist)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
