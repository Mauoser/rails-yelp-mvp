class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    review = Review.new(review_params)
    review.save
    redirect_to restaurant_path(restaurant)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
