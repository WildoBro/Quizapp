class TvshowsController < ApplicationController
  def index
    @tvshow = Tvshow.all
  end
end
