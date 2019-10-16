class CommentsController < ApplicationController

  def create

    # find review
    @review = Review.find(params[:review_id])

    @comment = @review.comments.new(params.require(:comment).permit(:body))

    @comment.save

    redirect_to review_path(@review)

  end

end
