class AreasController < ApplicationController

  def new
    @form = Form::AreaCollection.new
  end

  def create
    @area = Form::AreaCollection.new(area_collection_params)
    if @area.save
      redirect_to :new
    else
      render :new
    end
  end

  def show
    @area = Area.find(params[:id])
    #if @area.city == nil
    #  @same_country_id = Area.where(country:@area.country, prefecture:nil, city:nil).ids
    #elsif @area.city != nil
    #  @same_country_id = Area.where(country:@area.country, prefecture:nil, city:nil).ids
    #  @same_country_pre_id = Area.where(country:@area.country, prefecture:@area.prefecture, city:nil).ids
    #end
    @novels = @area.novels
    @result = []

    @novels.each do |novel|
      title = novel.title
      auther = novel.auther
      search_rakuten_api(title, auther)
      @result << @item
    end
  end

  def search
    @q = Area.ransack(params[:q])
    @areas = @q.result
    @novels = []
    @areas.each do |area|
      @novels << area.novels
    end
  end

  private

  def area_collection_params
    params
      .require(:form_area_collection)
      .permit(areas_attributes: Form::Area::REGISTRABLE_ATTRIBUTES)
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
