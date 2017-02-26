class UserReviewsController < ApplicationController
  def create
    @tvshow = Tvshow.find(params[:tvshow_id])
    @tvshow.user_reviews.create(user_review_params)
    redirect_to tvshow_path(@tvshow)
  end

  def new
    @tvshow = Tvshow.find(params[:tvshow_id])
    @user_review = UserReview.new
  end

  private

  def user_review_params
    params.require(:user_review).permit(:review, :rating, :name)
  end
end
