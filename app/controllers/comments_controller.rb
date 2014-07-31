class CommentsController < ApplicationController
  def create
    @professional = Professional.find(params[:professional_id])
    @comment = @professional.comments.create(comment_params)
    redirect_to professional_path(@professional)
  end

  private
    def comment_params
      params.require(:comment) .permit(:commenter, :body, :approved)
    end
end
