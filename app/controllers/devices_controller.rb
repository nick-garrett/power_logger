class DevicesController < ApplicationController
  def index
    @devices = Device.all
  end

  def show
    @device = Device.find!(params[:id])
  end

  def new
    @device = Device.create!
    render :json => {:id => @device.id}
  end

  def edit
    @device = Device.find!(params[:id])
  end

  def update
    @device = Device.find!(params[:id])
    @device.update_attributes(update_params)
  end

  private

  def update_params
    params.require(:device).permit(:state)
  end
end
