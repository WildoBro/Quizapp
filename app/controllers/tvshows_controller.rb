class TvshowsController < ApplicationController
  def index
    @tvshow = Tvshow.all

  end

  def show
    @tvshow = Tvshow.find(params[:id])
  end
end
