class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :set_search
  
  def set_search
    @q = Area.ransack(params[:q])
    @areas = @q.result
    @novels = []
    @areas.each do |area|
      @novels << area.novels
    end
  end

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
  
end
