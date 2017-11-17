class DevicesController < ApplicationController
  def index
    @devices = Device.all
  end

  def show
    @device = Device.find(params[:id])
    @readings = @device.readings
  end

  def new
    @device = Device.create!
    render :json => {:id => @device.id}
  end

  def edit
    @device = Device.find(params[:id])
  end

  def update
    @device = Device.find(params[:id])
    @device.update_attributes(update_params)
  end

  def state
    @device = Device.find(params[:id])
    render :json => { :state => @device.state }
  end

  def toggle_state
    @device = Device.find(params[:id])
    puts @device.state
    @device.state = !@device.state
    @device.save!
    redirect_to device_path(@device)
  end

  private

  def update_params
    params.require(:device).permit(:state)
  end
end
