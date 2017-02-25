class TvshowsController < ApplicationController
  def index
    @tvshow = Tvshow.all

  end

  def show
    @tvshow = Tvshow.find(params[:id])
    @new_user_review = UserReview.new
    @user_review = UserReview.find(params[:id])
  end
end
