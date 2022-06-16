class NovelsController < ApplicationController
  def index
    @novels = Novel.page(params[:page]).per(12).includes(:areas).order("created_at DESC")
  end

  def new
    @novel = Novel.new
  end

  def create
    @novel = Novel.new(novel_params)
    if @novel.save
      redirect_to action: :complete
    else
      render :new
    end
  end
  
  def complete
  end

  private
  def novel_params
    params.require(:novel).permit(:title, :auther, :release_year, :genre_id, :another_area, :spot, :synopsis, :mediamix, area_ids:[])
  end
end
