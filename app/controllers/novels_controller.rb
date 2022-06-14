class NovelsController < ApplicationController
  def index
  end

  def new
    @novel = Novel.new
  end

  def create
    @novel = Novel.new(novel_params)
    if @novel.save
      redirect_to action: :index
    else
      render :new
    end
  end

  private
  def novel_params
    params.require(:novel).permit(:title, :auther, :release_year, :genre_id, :another_area, :spot, :synopsis, :mediamix, area_ids:[])
  end
end
