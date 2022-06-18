class NovelsController < ApplicationController
  before_action :set_novel, only:[:show, :edit, :update]

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
    title = @novel.title
    auther = @novel.auther
    search_rakuten_api(title, auther)
    search_rakuten_api_dvd(title)
  end

  def edit
  end

  def update
    if @novel.update(novel_params)
      redirect_to novel_path(@novel.id)
    else
      render :edit
    end
  end
  
  private
  def novel_params
    params.require(:novel).permit(:title, :auther, :release_year, :genre_id, :another_area, :spot, :synopsis, :mediamix, area_ids:[])
  end

  def set_novel
    @novel = Novel.find(params[:id])
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

  def search_rakuten_api_dvd(title)
    RakutenWebService.configure do |c|
      c.application_id = ENV["RAKUTEN_APP_KEY_ID"]
      c.affiliate_id = ENV["RAKUTEN_AFFILIATE_KEY_ID"]
    end
    items = RakutenWebService::Books::DVD.search(title: title)
    items.first(1).each do |item|
      @dvditem = item
    end
  end
end
