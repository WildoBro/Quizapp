class TvshowsController < ApplicationController
  def index
    @tvshow = Tvshow.all
    @user_review = UserReview.new
  end
end
