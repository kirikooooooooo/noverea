class NovelsController < ApplicationController
  def index
  end

  def new
    @novel = Novel.new
  end

  def create
  end
end
