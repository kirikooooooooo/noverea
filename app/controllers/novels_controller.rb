class NovelsController < ApplicationController
  def index
    @novels = Novel.includes(:areas).order("updated_at DESC")
    @novels = Kaminari.paginate_array(@novels).page(params[:page])
    
    @result = []

    @novels.each do |novel|
      title = novel.title
      auther = novel.auther
      search_rakuten_api(title, auther)
      @result << @item
    end
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

  def show
  end
  
  private
  def novel_params
    params.require(:novel).permit(:title, :auther, :release_year, :genre_id, :another_area, :spot, :synopsis, :mediamix, area_ids:[])
  end

  def search_rakuten_api(title, auther)
    RakutenWebService.configure do |c|
      c.application_id = ENV["RAKUTEN_APP_KEY_ID"]
      c.affiliate_id = ENV["RAKUTEN_AFFILIATE_KEY_ID"]
    end
    items = RakutenWebService::Books::Book.search(title: title, auther: auther)
    items.first(1).each do |item|
      @item = item
    end
  end
end
