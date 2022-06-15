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

  private

  def area_collection_params
    params
      .require(:form_area_collection)
      .permit(areas_attributes: Form::Area::REGISTRABLE_ATTRIBUTES)
  end
end
