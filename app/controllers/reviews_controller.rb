class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @book = Book.find(params[:book_id])
    @review = @book.reviews.build(review_params)
    @review.user = current_user

    if @review.save
      redirect_to @book
    else
      redirect_to @book, alert: "Could not save review."
    end
  end

  def destroy
    @review = current_user.reviews.find(params[:id])
    @book = @review.book
    @review.destroy
    redirect_to @book, notice: "Review deleted."
  end

  private
  def review_params
    params.require(:review).permit(:status, :rating, :body)
  end
end
