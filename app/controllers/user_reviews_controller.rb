class UserReviewsController < ApplicationController
  def create
    @tvshow = Tvshow.find(:tvshow_id)
    @tvshow.user_reviews.create(user_review_params)
    redirect_to root_path
  end

  private

  def user_review_params
    params.require(:user_review).permit(:review, :rating, :name)
  end
end
