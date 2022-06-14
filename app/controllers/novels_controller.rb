class NovelsController < ApplicationController
  def index
  end

  def new
    @novel = Novel.new
  end

  def create
    Novel.create(novel_params)
  end

  private
  def novel_params
    params.require(:novel).permit(:title, :auther, :release_year, :genre_id, :another_area, :spot, :synopsis, :mediamix)
  end
end
