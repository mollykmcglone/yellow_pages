class BusinessesController < ApplicationController
  def new
    @type = Type.find(params[:type_id])
    @business = @type.businesses.new
  end

  def create
    @type = Type.find(params[:type_id])
    @business = @type.businesses.new(business_params)
    if @business.save
      redirect_to type_path(@business.type)
    else
      render :new
    end
  end

private
  def business_params
    params.require(:business).permit(:name, :address, :city, :state, :zipcode, :phone, :website)
  end
end
